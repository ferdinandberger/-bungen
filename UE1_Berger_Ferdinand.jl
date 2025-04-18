
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
    z = Int64(k)
    for i in 1:k
        z[i] = max(t)

        

    return
end


### Beispiel 2

function nearestindex(x::Vector{<:Real}, y::Real) :: Int
    # Fuege hier deinen Loesungscode ein
    return
end


### Beispiel 3

function swap!(x::Vector, i::Integer, j::Integer) :: Nothing
    # Fuege hier deinen Loesungscode ein
    return
end

function bubblesort!(x::Vector{<:Real}; rev::Bool = false) :: Nothing
    # Fuege hier deinen Loesungscode ein
    return
end


### Beispiel 4

function canonicaltour(x::Vector{T}) :: Vector{T} where {T <: Integer}
    # Fuege hier deinen Loesungscode ein
    return
end


### Beispiel 5

function distance(x::Vector{<:Real}, y::Vector{<:Real}; p::Real = 2)
    # Fuege hier deinen Loesungscode ein
    return
end

