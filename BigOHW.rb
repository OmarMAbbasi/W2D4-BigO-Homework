def slug(fish)
    length = fish.length
    sorted = false
    until sorted
        sorted = true
        fish[0...-1].each_idx do |idx|
            if fish[idx].length > fish[idx+1].length
                fish[idx], fish[idx+1] = fish[idx+1], fish[idx]
            end
        end
    end
end

def dom(fish)
    self if fish.length <= 1
    mid = fish.length/2
    left = fish[0...mid].dom
    right = fish[mid..-1].dom
    dom_sort(left,right)
end

def dom_sort(left,right)
    merged = []
    until left.empty || right.empty
        case left[0].length <=> right[0].length
        when -1 
            merged << left.shift
        when 0 
            merged << left.shift
        when 1
            merged right.shift
        end
    end
    return merged + left + right
end


def clever(fish)
    length = 0
    idx = 0
    fish.each.with_index {|fishie,i| idx = 1 if fishie.length > length}
    return idx

end

def slow_dance(dir, tiles_array)
    tiles_array.each_index {|tile| return tile if tiles_array[tile] == dir }
end

def fast_dance(dir, hash)
    return hash[dir]
end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
