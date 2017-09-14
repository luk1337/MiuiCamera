.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x20

    const/16 v3, 0x2a

    const/16 v0, 0x28

    .line 53
    new-array v0, v0, [C

    .line 54
    aput-char v3, v0, v5

    aput-char v3, v0, v6

    aput-char v3, v0, v7

    const/4 v1, 0x3

    aput-char v4, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xe

    .line 55
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    .line 56
    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x53

    aput-char v1, v0, v4

    const/16 v1, 0x21

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    .line 53
    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    const/16 v0, 0x1b

    .line 59
    new-array v0, v0, [C

    .line 60
    const/16 v1, 0x21

    aput-char v1, v0, v5

    const/16 v1, 0x22

    aput-char v1, v0, v6

    const/16 v1, 0x23

    aput-char v1, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x25

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x26

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x28

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x29

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v3, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0xe

    .line 61
    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x3e

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x40

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5e

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    .line 59
    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    const/16 v0, 0x28

    .line 68
    new-array v0, v0, [C

    .line 69
    aput-char v3, v0, v5

    aput-char v3, v0, v6

    aput-char v3, v0, v7

    const/4 v1, 0x3

    aput-char v4, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xe

    .line 70
    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    .line 71
    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x73

    aput-char v1, v0, v4

    const/16 v1, 0x21

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    .line 68
    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 74
    new-array v0, v4, [C

    .line 75
    const/16 v1, 0x60

    aput-char v1, v0, v5

    const/16 v1, 0x41

    aput-char v1, v0, v6

    const/16 v1, 0x42

    aput-char v1, v0, v7

    const/4 v1, 0x3

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0xf

    .line 76
    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x7e

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x7f

    aput-char v2, v0, v1

    .line 74
    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 83
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 84
    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x64

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    .local v3, "result":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v4, "resultTrailer":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v1, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 89
    .local v2, "mode":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    :goto_0
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v2, v6, :cond_0

    .line 92
    invoke-static {}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode()[I

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 109
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 90
    :cond_0
    invoke-static {v0, v3, v4}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v2

    .line 113
    :goto_1
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v2, v6, :cond_2

    .line 114
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gtz v6, :cond_3

    .line 117
    :goto_2
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .end local v1    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_3
    invoke-direct {v6, p0, v7, v1, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v6

    .line 94
    .restart local v1    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :pswitch_0
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 111
    :goto_4
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 97
    :pswitch_1
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 100
    :pswitch_2
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 103
    :pswitch_3
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 106
    :pswitch_4
    invoke-static {v0, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_4

    .line 113
    :cond_2
    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    .line 88
    if-lez v6, :cond_1

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    move-object v1, v5

    .line 117
    goto :goto_3

    .line 92
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    .line 368
    new-array v1, v5, [I

    .line 371
    .local v1, "cValues":[I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 374
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .local v2, "firstByte":I
    const/16 v4, 0xfe

    .line 375
    if-eq v2, v4, :cond_2

    .line 379
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v3, 0x0

    .line 381
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_9

    .line 382
    aget v0, v1, v3

    .line 383
    .local v0, "cValue":I
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 385
    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    .line 387
    if-eq v0, v4, :cond_5

    .line 389
    if-eq v0, v5, :cond_6

    const/16 v4, 0xe

    .line 391
    if-lt v0, v4, :cond_7

    const/16 v4, 0x28

    .line 393
    if-lt v0, v4, :cond_8

    .line 396
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 372
    .end local v0    # "cValue":I
    .end local v2    # "firstByte":I
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 376
    .restart local v2    # "firstByte":I
    :cond_2
    return-void

    .line 384
    .restart local v0    # "cValue":I
    .restart local v3    # "i":I
    :cond_3
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    :cond_4
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 388
    :cond_5
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 390
    :cond_6
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 392
    :cond_7
    add-int/lit8 v4, v0, 0x2c

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 394
    :cond_8
    add-int/lit8 v4, v0, 0x33

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 399
    .end local v0    # "cValue":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    .line 369
    if-gtz v4, :cond_0

    .line 400
    return-void
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "resultTrailer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 126
    const/4 v1, 0x0

    .local v1, "upperShift":Z
    :cond_0
    const/16 v3, 0x8

    .line 128
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 129
    .local v0, "oneByte":I
    if-eqz v0, :cond_2

    const/16 v3, 0x80

    .line 131
    if-le v0, v3, :cond_3

    const/16 v3, 0x81

    .line 138
    if-eq v0, v3, :cond_5

    const/16 v3, 0xe5

    .line 140
    if-le v0, v3, :cond_6

    const/16 v3, 0xe6

    .line 146
    if-eq v0, v3, :cond_8

    const/16 v3, 0xe7

    .line 148
    if-eq v0, v3, :cond_9

    const/16 v3, 0xe8

    .line 150
    if-eq v0, v3, :cond_a

    const/16 v3, 0xe9

    .line 153
    if-ne v0, v3, :cond_b

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    .line 127
    if-gtz v3, :cond_0

    .line 182
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 130
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 132
    :cond_3
    if-nez v1, :cond_4

    .line 136
    :goto_1
    add-int/lit8 v3, v0, -0x1

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 133
    :cond_4
    add-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 139
    :cond_5
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 141
    :cond_6
    add-int/lit16 v2, v0, -0x82

    .local v2, "value":I
    const/16 v3, 0xa

    .line 142
    if-lt v2, v3, :cond_7

    .line 145
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_7
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 147
    .end local v2    # "value":I
    :cond_8
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 149
    :cond_9
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 152
    :cond_a
    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_b
    const/16 v3, 0xea

    .line 153
    if-eq v0, v3, :cond_1

    const/16 v3, 0xeb

    .line 157
    if-eq v0, v3, :cond_d

    const/16 v3, 0xec

    .line 159
    if-eq v0, v3, :cond_e

    const/16 v3, 0xed

    .line 162
    if-eq v0, v3, :cond_f

    const/16 v3, 0xee

    .line 165
    if-eq v0, v3, :cond_10

    const/16 v3, 0xef

    .line 167
    if-eq v0, v3, :cond_11

    const/16 v3, 0xf0

    .line 169
    if-eq v0, v3, :cond_12

    const/16 v3, 0xf1

    .line 171
    if-eq v0, v3, :cond_1

    const/16 v3, 0xf2

    .line 175
    if-lt v0, v3, :cond_1

    const/16 v3, 0xfe

    .line 177
    if-eq v0, v3, :cond_13

    .line 178
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 158
    :cond_d
    const/4 v1, 0x1

    goto :goto_0

    :cond_e
    const-string/jumbo v3, "[)>\u001e05\u001d"

    .line 160
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u001e\u0004"

    .line 161
    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_f
    const-string/jumbo v3, "[)>\u001e06\u001d"

    .line 163
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u001e\u0004"

    .line 164
    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 166
    :cond_10
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 168
    :cond_11
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 170
    :cond_12
    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v3

    .line 177
    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p2, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    const/16 v8, 0xfa

    const/16 v9, 0x8

    .line 451
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 452
    .local v1, "codewordPosition":I
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codewordPosition":I
    .local v2, "codewordPosition":I
    invoke-static {v7, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v4

    .line 454
    .local v4, "d1":I
    if-eqz v4, :cond_0

    .line 456
    if-lt v4, v8, :cond_1

    .line 459
    add-int/lit16 v7, v4, -0xf9

    mul-int/lit16 v7, v7, 0xfa

    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    invoke-static {v8, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v8

    add-int v3, v7, v8

    .line 463
    .local v3, "count":I
    :goto_0
    if-ltz v3, :cond_2

    .line 467
    new-array v0, v3, [B

    .local v0, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    move v2, v1

    .line 468
    .end local v1    # "codewordPosition":I
    .restart local v2    # "codewordPosition":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 471
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-lt v7, v9, :cond_3

    .line 474
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    invoke-static {v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 468
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "codewordPosition":I
    .restart local v2    # "codewordPosition":I
    goto :goto_1

    .line 455
    .end local v0    # "bytes":[B
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    div-int/lit8 v3, v7, 0x8

    .restart local v3    # "count":I
    move v1, v2

    .line 456
    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    goto :goto_0

    .line 457
    .end local v1    # "codewordPosition":I
    .end local v3    # "count":I
    .restart local v2    # "codewordPosition":I
    :cond_1
    move v3, v4

    .restart local v3    # "count":I
    move v1, v2

    .line 458
    .end local v2    # "codewordPosition":I
    .restart local v1    # "codewordPosition":I
    goto :goto_0

    .line 464
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 472
    .end local v1    # "codewordPosition":I
    .restart local v0    # "bytes":[B
    .restart local v2    # "codewordPosition":I
    .restart local v5    # "i":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 476
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 478
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "ISO8859_1"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-void

    .line 479
    :catch_0
    move-exception v6

    .line 480
    .local v6, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Platform does not support required encoding: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 192
    const/4 v6, 0x0

    .line 194
    .local v6, "upperShift":Z
    new-array v2, v8, [I

    .local v2, "cValues":[I
    const/4 v5, 0x0

    .line 199
    .local v5, "shift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-eq v7, v9, :cond_1

    .line 202
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .local v3, "firstByte":I
    const/16 v7, 0xfe

    .line 203
    if-eq v3, v7, :cond_2

    .line 207
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v3, v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v4, 0x0

    .line 209
    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_c

    .line 210
    aget v1, v2, v4

    .line 211
    .local v1, "cValue":I
    packed-switch v5, :pswitch_data_0

    .line 264
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 200
    .end local v1    # "cValue":I
    .end local v3    # "firstByte":I
    .end local v4    # "i":I
    :cond_1
    return-void

    .line 204
    .restart local v3    # "firstByte":I
    :cond_2
    return-void

    .line 213
    .restart local v1    # "cValue":I
    .restart local v4    # "i":I
    :pswitch_0
    if-lt v1, v8, :cond_3

    .line 215
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-lt v1, v7, :cond_4

    .line 224
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 214
    :cond_3
    add-int/lit8 v5, v1, 0x1

    .line 209
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    :cond_4
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 217
    .local v0, "c40char":C
    if-nez v6, :cond_5

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 218
    :cond_5
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    const/4 v6, 0x0

    goto :goto_1

    .line 228
    .end local v0    # "c40char":C
    :pswitch_1
    if-nez v6, :cond_6

    .line 232
    int-to-char v7, v1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v5, 0x0

    .line 234
    goto :goto_1

    .line 229
    :cond_6
    add-int/lit16 v7, v1, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    const/4 v6, 0x0

    goto :goto_2

    .line 237
    :pswitch_2
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-lt v1, v7, :cond_7

    const/16 v7, 0x1b

    .line 245
    if-eq v1, v7, :cond_9

    const/16 v7, 0x1e

    .line 247
    if-eq v1, v7, :cond_a

    .line 250
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 238
    :cond_7
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v7, v1

    .line 239
    .restart local v0    # "c40char":C
    if-nez v6, :cond_8

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v0    # "c40char":C
    :goto_3
    const/4 v5, 0x0

    .line 252
    goto :goto_1

    .line 240
    .restart local v0    # "c40char":C
    :cond_8
    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    const/4 v6, 0x0

    goto :goto_3

    .line 246
    .end local v0    # "c40char":C
    :cond_9
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 248
    :cond_a
    const/4 v6, 0x1

    goto :goto_3

    .line 255
    :pswitch_3
    if-nez v6, :cond_b

    .line 259
    add-int/lit8 v7, v1, 0x60

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v5, 0x0

    .line 261
    goto :goto_1

    .line 256
    :cond_b
    add-int/lit16 v7, v1, 0xe0

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    const/4 v6, 0x0

    goto :goto_4

    .line 267
    .end local v1    # "cValue":I
    :cond_c
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    .line 197
    if-gtz v7, :cond_0

    .line 268
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    .line 422
    if-ge v2, v3, :cond_5

    const/4 v3, 0x6

    .line 423
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .local v1, "edifactValue":I
    const/16 v3, 0x1f

    .line 426
    if-eq v1, v3, :cond_2

    .line 435
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_4

    .line 438
    :goto_1
    int-to-char v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "edifactValue":I
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 428
    .restart local v1    # "edifactValue":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v3

    rsub-int/lit8 v0, v3, 0x8

    .local v0, "bitsLeft":I
    const/16 v3, 0x8

    .line 429
    if-ne v0, v3, :cond_3

    .line 432
    :goto_2
    return-void

    .line 430
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto :goto_2

    .line 436
    .end local v0    # "bitsLeft":I
    :cond_4
    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    .line 440
    .end local v1    # "edifactValue":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    .line 416
    if-gtz v3, :cond_0

    .line 441
    return-void
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 11
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    .line 277
    const/4 v7, 0x0

    .line 279
    .local v7, "upperShift":Z
    new-array v2, v9, [I

    .local v2, "cValues":[I
    const/4 v5, 0x0

    .line 283
    .local v5, "shift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-eq v8, v10, :cond_1

    .line 286
    invoke-virtual {p0, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .local v3, "firstByte":I
    const/16 v8, 0xfe

    .line 287
    if-eq v3, v8, :cond_2

    .line 291
    invoke-virtual {p0, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    invoke-static {v3, v8, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v4, 0x0

    .line 293
    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_d

    .line 294
    aget v1, v2, v4

    .line 295
    .local v1, "cValue":I
    packed-switch v5, :pswitch_data_0

    .line 354
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 284
    .end local v1    # "cValue":I
    .end local v3    # "firstByte":I
    .end local v4    # "i":I
    :cond_1
    return-void

    .line 288
    .restart local v3    # "firstByte":I
    :cond_2
    return-void

    .line 297
    .restart local v1    # "cValue":I
    .restart local v4    # "i":I
    :pswitch_0
    if-lt v1, v9, :cond_3

    .line 299
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v8, v8

    if-lt v1, v8, :cond_4

    .line 308
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 298
    :cond_3
    add-int/lit8 v5, v1, 0x1

    .line 293
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    :cond_4
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v6, v8, v1

    .line 301
    .local v6, "textChar":C
    if-nez v7, :cond_5

    .line 305
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    :cond_5
    add-int/lit16 v8, v6, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    const/4 v7, 0x0

    goto :goto_1

    .line 312
    .end local v6    # "textChar":C
    :pswitch_1
    if-nez v7, :cond_6

    .line 316
    int-to-char v8, v1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v5, 0x0

    .line 318
    goto :goto_1

    .line 313
    :cond_6
    add-int/lit16 v8, v1, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    const/4 v7, 0x0

    goto :goto_2

    .line 322
    :pswitch_2
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v8

    if-lt v1, v8, :cond_7

    const/16 v8, 0x1b

    .line 330
    if-eq v1, v8, :cond_9

    const/16 v8, 0x1e

    .line 332
    if-eq v1, v8, :cond_a

    .line 335
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 323
    :cond_7
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v8, v1

    .line 324
    .local v0, "c40char":C
    if-nez v7, :cond_8

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v0    # "c40char":C
    :goto_3
    const/4 v5, 0x0

    .line 337
    goto :goto_1

    .line 325
    .restart local v0    # "c40char":C
    :cond_8
    add-int/lit16 v8, v0, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    const/4 v7, 0x0

    goto :goto_3

    .line 331
    .end local v0    # "c40char":C
    :cond_9
    const/16 v8, 0x1d

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 333
    :cond_a
    const/4 v7, 0x1

    goto :goto_3

    .line 340
    :pswitch_3
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v8, v8

    if-lt v1, v8, :cond_b

    .line 350
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 341
    :cond_b
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v6, v8, v1

    .line 342
    .restart local v6    # "textChar":C
    if-nez v7, :cond_c

    .line 346
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v5, 0x0

    .line 348
    goto :goto_1

    .line 343
    :cond_c
    add-int/lit16 v8, v6, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    const/4 v7, 0x0

    goto :goto_4

    .line 357
    .end local v1    # "cValue":I
    .end local v6    # "textChar":C
    :cond_d
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    .line 281
    if-gtz v8, :cond_0

    .line 358
    return-void

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 4
    .param p0, "firstByte"    # I
    .param p1, "secondByte"    # I
    .param p2, "result"    # [I

    .prologue
    .line 403
    shl-int/lit8 v2, p0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 404
    .local v0, "fullBitValue":I
    div-int/lit16 v1, v0, 0x640

    .local v1, "temp":I
    const/4 v2, 0x0

    .line 405
    aput v1, p2, v2

    .line 406
    mul-int/lit16 v2, v1, 0x640

    sub-int/2addr v0, v2

    .line 407
    div-int/lit8 v1, v0, 0x28

    const/4 v2, 0x1

    .line 408
    aput v1, p2, v2

    const/4 v2, 0x2

    .line 409
    mul-int/lit8 v3, v1, 0x28

    sub-int v3, v0, v3

    aput v3, p2, v2

    .line 410
    return-void
.end method

.method private static unrandomize255State(II)I
    .locals 3
    .param p0, "randomizedBase256Codeword"    # I
    .param p1, "base256CodewordPosition"    # I

    .prologue
    .line 489
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    .line 490
    .local v0, "pseudoRandomNumber":I
    sub-int v1, p0, v0

    .line 491
    .local v1, "tempVariable":I
    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    .end local v1    # "tempVariable":I
    :cond_0
    return v1
.end method
