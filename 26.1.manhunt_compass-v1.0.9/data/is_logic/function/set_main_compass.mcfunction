$item modify entity @s weapon.mainhand \
{\
    function:"set_components",\
    components:{\
        lodestone_tracker:{\
            target:{\
                dimension:"$(dimension)",\
                pos:$(xyz)\
            },\
            tracked:false\
        }\
    }\
}