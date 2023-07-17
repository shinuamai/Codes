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