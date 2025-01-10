# Função para procurar a instalação do Steam em todos os discos
function Find-Steam {
    $drives = Get-PSDrive -PSProvider FileSystem
    foreach ($drive in $drives) {
        $steamPath = Join-Path -Path $drive.Root -ChildPath "Program Files (x86)\Steam"
        if (Test-Path $steamPath) {
            Write-Host "Steam encontrado em: $steamPath"
            return $steamPath
        }
    }
    return $null
}

# Função para procurar o CS2 (Counter-Strike Global Offensive) na pasta correta
function Find-CS2 {
    $steamPath = Find-Steam
    if ($steamPath -eq $null) {
        Write-Host "Steam não encontrado nos discos"
        return $null
    }

    $csgoPath = Join-Path -Path $steamPath -ChildPath "steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg"
    if (Test-Path $csgoPath) {
        Write-Host "Pasta CS:GO encontrada em: $csgoPath"
        return $csgoPath
    }
    return $null
}

# Função para baixar e criar o arquivo autoexec.cfg
function Download-Autoexec {
    $csgoCfgPath = Find-CS2
    if ($csgoCfgPath -eq $null) {
        Write-Host "Pasta de configuração do CS:GO não encontrada"
        return
    }

    # URL do raw do GitHub
    $url = "https://raw.githubusercontent.com/PoBruno/cs/refs/heads/main/autoexec.cfg"
    $autoexecPath = Join-Path -Path $csgoCfgPath -ChildPath "autoexec.cfg"

    # Baixar o conteúdo do arquivo
    try {
        $content = Invoke-RestMethod -Uri $url
        Set-Content -Path $autoexecPath -Value $content
        Write-Host "Arquivo autoexec.cfg criado com sucesso em: $autoexecPath"
    } catch {
        Write-Host "Erro ao baixar o arquivo: $_"
    }
}

# Executando a função para baixar o autoexec.cfg
Download-Autoexec
