
#=
Fuege in dieses Template deine Loesungscodes ein.
Wichtig 1: Die Datei gemaess der Namensrichtlinien benennen.
Wichtig 2: Bitte nur die Funktionen ausprogrammieren und keine Funktionsaufrufe vornehmen.
=#

### Beispiel 1:

function greatest(x::Vector{T}, k::Integer = 1) :: Vector{T} where {T <: Real}
    if k > length(x) || k <= 0 
        throw(DomainError(k, "k muss größer als null und kleiner, als der Vektor, aus dem die größten Werte gesucht werden, sein."))
    end
    z = zeros(k)
    t = copy(x)
    bool = falses(length(x))
    for i in 1:k
        z[i] = maximum(t)
        t = t[t .!= z[i]]
    end
    for j in 1:length(x)
        bool[j] = x[j] in z
    end
    res = x[bool]
    return(res)
end


### Beispiel 2

function nearestindex(x::Vector{<:Real}, y::Real) :: Int
    z = x .- y 
    for i in 1:length(z)
        if z[i] < 0
            z[i] = z[i] * (-1)
        end
    end
    temp = (1:length(z))[z .== minimum(z)]
    res = StatsBase.sample(temp, 1)
    return (res)
end


### Beispiel 3

function swap!(x::Vector, i::Integer, j::Integer) :: Nothing
    res = x[i]
    x[i] = x[j]
    x[j] = res 
    return
end



function bubblesort!(x::Vector{<:Real}; rev::Bool = false) :: Nothing
    if rev == true 
        x = x * (-1)
    end
    for i in 1:(length(x)-1)
        for j in 1:(length(x)-i)
            if x[j] > x[j+1] 
                swap!(x, j, (j+1))
            end 
        end 
    end 
    if rev == true 
        x = x*(-1)
    end 
    return
end


### Beispiel 4

function canonicaltour(x::Vector{T}) :: Vector{T} where {T <: Integer}
    if sort(x) != (1:length(x))
        throw(DomainError(x, "x ist keine Permutation der natürlichen Zahlen 1 bis length(x)"))
    end
    tour = [1]
    ind1 = (1:length(x))[x .== 1][1]
    if ind1 != 1
        L = ind1 - 1
        R = ind1 + 1
        temp = x[R:length(x)]
        append!(temp,x[1:L])
        if temp[1] > temp[end]
            append!(tour, reverse(temp))
        else 
            append!(tour, temp)
        end
    else 
        if x[2] > x[end]
            append!(tour, reverse(x[2:length(x)]))
        else 
            tour = x 
        end 
    end 
    return(tour)
end



### Beispiel 5

function distance(x::Vector{<:Real}, y::Vector{<:Real}; p::Real = 2)
    if length(x) != length(y)
        throw(ArgumentError("x und y müssen gleich lang sein."))
    end
    if p <= 0 
        throw(ArgumentError("p muss größer als 0 sein."))
    end 
    pDist = (sum((abs.(x-y)).^p))^(1/p)
    return(pDist)
end

