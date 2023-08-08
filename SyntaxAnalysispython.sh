<st trying to match my_string = str(14 // my_int)
  <as trying to match my_string = str(14 // my_int)
    <ex trying to match str(14 // my_int)
      <fc trying to match str(14 // my_int)
        <ex trying to match 14 // my_int
          <be trying to match 14 // my_int
            <ex trying to match 14
            ex>@li matches 14
            <bo trying to match //
            bo>@ot matches //
            <ex trying to match my_int
            ex>@id matches my_int
          be>@ex matches 14 // my_int
        ex>@be matches 14 // my_int
      fc>@rp matches str(14 // my_int)
    ex>@fc matches str(14 // my_int)
  as>@ex matches str(14 // my_int)
st>@as matches my_string = str(14 // my_int)


<st trying to match my_num = 14 + 15
    <as trying to match my_num = 14 + 15
        <ex trying to match 14 + 15
            <be trying to match 14 + 15
                <ex trying to match 14
                ex>@li matches 14
                <bo trying to match +
                bo>@ot matches +
                <ex trying to match 15
                ex>@li matches 15
            be>@ex matches 14 + 15
        ex>@be matches 14 + 15
    as>@ex matches my_num = 14 + 15
st>@as maches my_num = 14 + 15

<st trying to match if 'COOKIES'.isupper: newline indent 'milk' newline dedent
  <cs trying to match if 'COOKIES'.isupper: newline indent 'milk' newline dedent
    <if trying to match if 'COOKIES'.isupper: newline indent 'milk' newline dedent
      <ex trying to match 'COOKIES'.isupper
        <ar trying to match 'COOKIES'
          <ex trying to match 'COOKIES'
          ex>@li matches 'COOKIES
        ar>@id matches 'COOKIES'.isupper
      ex>@ar matches 'COOKIES'.isupper
      <su trying to match newline indent 'milk' newline dedent
        <st trying to match 'milk' newline
          <ss trying to match 'milk'
            <es trying to match 'milk'
              <ex trying to match 'milk'
              ex>@li matches 'milk'
            es>@ex matches 'milk'
          ss>@es matches 'milk'
        st>@nl matches 'milk' newline
      su>@de matches newline indent 'milk' newline dedent
    if>@su matches newline indent 'milk' newline dedent
  cs>@if matches if 'COOKIES'.isupper: newline indent 'milk' newline dedent
st>@cs matches if 'COOKIES'.isupper: newline indent 'milk' newline dedent

<if starting if age >= 18: school = 'university of alberta'.title()
  <be starting age >= 18
    <id> evaluated age to get int 20
    <li> evaluated 18 to get int 18
  be> evaluated age >= 18 to get bool true
  <su starting school = 'university of alberta'.title()
    <as starting school = 'university of alberta'.title()
      <fc starting 'university of alberta'.title()
        <ar starting 'university of alberta'.title
          <li> evaluated 'university of alberta' to get str university of alberta
        ar> evaluated 'university of alberta'.title to get function title
      fc> evaluated 'university of alberta'.title() to get str University Of Alberta
    as> evaluated school = 'university of alberta'.title()
  su> evaluated school = 'university of alberta'.title()
if> evaluated if age >= 18: school = 'university of alberta'.title()