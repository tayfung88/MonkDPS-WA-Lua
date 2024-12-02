function(newPositions, activeRegions)
    local limit = 6 -- limite d'icônes par ligne
    local rows = 2 -- nombre total de lignes
    local spacing = 2 -- espacement entre les icônes
    local rowSpacing = 5 -- espacement supplémentaire entre la première et la deuxième ligne
    ----------------------
    local check = true
    local xCount = 0
    local yCount = 0
    local tCount = 0
    
    local xOffset = 0
    local yOffset = 0
    local total = #activeRegions
    
    for i, regionData in ipairs(activeRegions) do
        local region = regionData.region
        
        local regionsLeft = total - tCount
        local rowTotal = 1
        
        if total <= limit then
            rowTotal = total
        elseif (regionsLeft < limit and xCount < 1) or not check then
            check = false
            rowTotal = regionsLeft
        elseif yCount >= rows-1 then
            rowTotal = regionsLeft
        elseif total > limit then
            rowTotal = limit
        end
        
        -- Calculer la position horizontale (xOffset)
        xOffset = 0 - (region.width + spacing) / 2 * (rowTotal-1) + (xCount * (region.width + spacing))
        
        -- Calculer la position verticale (yOffset)
        -- Ajouter de l'espace supplémentaire (rowSpacing) entre la première et la deuxième ligne
        if yCount == 1 then
            yOffset = 0 - (region.height + spacing) * yCount - rowSpacing -- espace supplémentaire pour la deuxième ligne
        else
            yOffset = 0 - (region.height + spacing) * yCount
        end
        
        xCount = xCount + 1
        
        if yCount < rows-1 and check then
            tCount = tCount + 1
            if xCount >= limit then
                xCount = 0
                yCount = yCount + 1
            end
        end
        
        newPositions[i] = {xOffset, yOffset}
    end
end

