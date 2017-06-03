<project xmlns="com.autoesl.autopilot.project" name="aes256cbc" top="aes256cbc">
    <files>
        <file name="../src/aes256cbc_tb.c" sc="0" tb="1" cflags=" "/>
        <file name="aes256cbc/src/aes256ecb.h" sc="0" tb="false" cflags=""/>
        <file name="aes256cbc/src/aes256ecb.c" sc="0" tb="false" cflags=""/>
        <file name="aes256cbc/src/aes256cbc.h" sc="0" tb="false" cflags=""/>
        <file name="aes256cbc/src/aes256cbc.c" sc="0" tb="false" cflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="-lssl -lcrypto" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

