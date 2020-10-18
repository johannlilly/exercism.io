"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
const valid_nucleotides = ['A', 'C', 'G', 'T']

function count_nucleotides(strand::String)

    nucleotides = Dict{Char,Int32}('A'=>0, 'C'=>0, 'G'=>0, 'T'=>0)
    
    for i in strand
        if i in valid_nucleotides
            nucleotides[i] = nucleotides[i] + 1
        else
            throw(DomainError(i, "strand with invalid nucleotides"))
        end
    end

    return nucleotides
end