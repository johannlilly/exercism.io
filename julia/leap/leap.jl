"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""

@enum Year normal=false leap=true

function is_leap_year(year)::Bool

    isdivisibleby4   = year % 4   == 0
    isdivisibleby100 = year % 100 == 0
    isdivisibleby400 = year % 400 == 0

    if isdivisibleby4 && isdivisibleby100 && isdivisibleby400
        typeofyear = leap::Year
    elseif isdivisibleby4 && !isdivisibleby100
        typeofyear = leap::Year
    else
        typeofyear = normal::Year
    end

    typeofyear == leap::Year ? true : false

end