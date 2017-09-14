.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field static final CODE_PATTERNS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v0, 0x6b

    .line 39
    new-array v0, v0, [[I

    const/4 v1, 0x6

    .line 40
    new-array v1, v1, [I

    aput v5, v1, v8

    aput v4, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 41
    new-array v1, v1, [I

    aput v5, v1, v8

    aput v5, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x6

    .line 42
    new-array v1, v1, [I

    aput v5, v1, v8

    aput v5, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v4, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    .line 43
    new-array v1, v1, [I

    aput v4, v1, v8

    aput v5, v1, v4

    aput v4, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v6, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    .line 44
    new-array v1, v1, [I

    aput v4, v1, v8

    aput v5, v1, v4

    aput v4, v1, v5

    aput v6, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    .line 45
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    .line 46
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    .line 47
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    .line 48
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    .line 49
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    .line 50
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x6

    .line 51
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x6

    .line 52
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    .line 53
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    .line 54
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    .line 55
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x6

    .line 56
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x6

    .line 57
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x6

    .line 58
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    .line 59
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x6

    .line 60
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x6

    .line 61
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x6

    .line 62
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x6

    .line 63
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x6

    .line 64
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x6

    .line 65
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    .line 66
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x6

    .line 67
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x6

    .line 68
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x6

    .line 69
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x6

    .line 70
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x6

    .line 71
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x6

    .line 72
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x6

    .line 73
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x6

    .line 74
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x6

    .line 75
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x6

    .line 76
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x6

    .line 77
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x6

    .line 78
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x6

    .line 79
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x6

    .line 80
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x6

    .line 81
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x6

    .line 82
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x6

    .line 83
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    .line 84
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x6

    .line 85
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x6

    .line 86
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x6

    .line 87
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x6

    .line 88
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x6

    .line 89
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x6

    .line 90
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x6

    .line 91
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x6

    .line 92
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    .line 93
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    .line 94
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x6

    .line 95
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x6

    .line 96
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/4 v2, 0x6

    .line 97
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x6

    .line 98
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x6

    .line 99
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/4 v2, 0x6

    .line 100
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x6

    .line 101
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x6

    .line 102
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x6

    .line 103
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x6

    .line 104
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x6

    .line 105
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x6

    .line 106
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x6

    .line 107
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x6

    .line 108
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x6

    .line 109
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x6

    .line 110
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    .line 111
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x6

    .line 112
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const/4 v2, 0x6

    .line 113
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const/4 v2, 0x6

    .line 114
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x6

    .line 115
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const/4 v2, 0x6

    .line 116
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x6

    .line 117
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const/4 v2, 0x6

    .line 118
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x6

    .line 119
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const/4 v2, 0x6

    .line 120
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const/4 v2, 0x6

    .line 121
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const/4 v2, 0x6

    .line 122
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x6

    .line 123
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const/4 v2, 0x6

    .line 124
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, 0x6

    .line 125
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v7, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const/4 v2, 0x6

    .line 126
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const/4 v2, 0x6

    .line 127
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const/4 v2, 0x6

    .line 128
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x6

    .line 129
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x6

    .line 130
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x6

    .line 131
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x6

    .line 132
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const/4 v2, 0x6

    .line 133
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x6

    .line 134
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x6

    .line 135
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const/4 v2, 0x6

    .line 136
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const/4 v2, 0x6

    .line 137
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const/4 v2, 0x6

    .line 138
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, 0x6

    .line 139
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x6

    .line 140
    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const/4 v2, 0x6

    .line 141
    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x6

    .line 142
    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const/4 v2, 0x6

    .line 143
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const/4 v2, 0x6

    .line 144
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const/4 v2, 0x6

    .line 145
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const/4 v2, 0x7

    .line 146
    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    aput-object v2, v0, v1

    .line 39
    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 167
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .locals 6
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/high16 v1, 0x3e800000    # 0.25f

    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .local v0, "bestMatch":I
    const/4 v2, 0x0

    .line 219
    .local v2, "d":I
    :goto_0
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 220
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v5, v2

    .local v3, "pattern":[I
    const v5, 0x3f333333    # 0.7f

    .line 221
    invoke-static {p1, v3, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v4

    .line 222
    .local v4, "variance":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    .line 223
    move v1, v4

    .line 224
    move v0, v2

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "pattern":[I
    .end local v4    # "variance":F
    :cond_1
    if-gez v0, :cond_2

    .line 231
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 229
    :cond_2
    return v0
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 15
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    .local v11, "width":I
    const/4 v12, 0x0

    .line 171
    invoke-virtual {p0, v12}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    .local v8, "rowOffset":I
    const/4 v2, 0x0

    .local v2, "counterPosition":I
    const/4 v12, 0x6

    .line 174
    new-array v3, v12, [I

    .line 175
    .local v3, "counters":[I
    move v7, v8

    .line 176
    .local v7, "patternStart":I
    const/4 v5, 0x0

    .line 177
    .local v5, "isWhite":Z
    array-length v6, v3

    .line 179
    .local v6, "patternLength":I
    move v4, v8

    .end local v5    # "isWhite":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_7

    .line 180
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    xor-int/2addr v12, v5

    if-nez v12, :cond_0

    .line 183
    add-int/lit8 v12, v6, -0x1

    if-eq v2, v12, :cond_1

    .line 205
    add-int/lit8 v2, v2, 0x1

    :goto_1
    const/4 v12, 0x1

    .line 207
    aput v12, v3, v2

    .line 208
    if-nez v5, :cond_6

    const/4 v5, 0x1

    .line 179
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_0
    aget v12, v3, v2

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v2

    goto :goto_2

    :cond_1
    const/high16 v1, 0x3e800000    # 0.25f

    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .local v0, "bestMatch":I
    const/16 v9, 0x67

    .local v9, "startCode":I
    :goto_3
    const/16 v12, 0x69

    .line 186
    if-gt v9, v12, :cond_3

    .line 187
    sget-object v12, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v12, v12, v9

    const v13, 0x3f333333    # 0.7f

    invoke-static {v3, v12, v13}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v10

    .line 189
    .local v10, "variance":F
    cmpg-float v12, v10, v1

    if-gez v12, :cond_2

    .line 190
    move v1, v10

    .line 191
    move v0, v9

    .line 186
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 195
    .end local v10    # "variance":F
    :cond_3
    if-gez v0, :cond_5

    :cond_4
    const/4 v12, 0x0

    .line 199
    aget v12, v3, v12

    const/4 v13, 0x1

    aget v13, v3, v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 200
    add-int/lit8 v14, v6, -0x2

    invoke-static {v3, v12, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/lit8 v12, v6, -0x2

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 202
    add-int/lit8 v12, v6, -0x1

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 203
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    .line 196
    sub-int v13, v4, v7

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v7, v13}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x3

    .line 197
    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v7, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    const/4 v13, 0x2

    aput v0, v12, v13

    return-object v12

    .end local v0    # "bestMatch":I
    .end local v1    # "bestVariance":F
    .end local v9    # "startCode":I
    :cond_6
    const/4 v5, 0x0

    .line 208
    goto :goto_2

    .line 211
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 38
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 239
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p3, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 241
    .local v8, "convertFNC1":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v29

    .local v29, "startPatternInfo":[I
    const/16 v32, 0x2

    .line 242
    aget v28, v29, v32

    .line 244
    .local v28, "startCode":I
    new-instance v22, Ljava/util/ArrayList;

    const/16 v32, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v22, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    packed-switch v28, :pswitch_data_0

    .line 259
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v32

    throw v32

    .line 239
    .end local v8    # "convertFNC1":Z
    .end local v22    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v28    # "startCode":I
    .end local v29    # "startPatternInfo":[I
    :cond_1
    sget-object v32, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .restart local v8    # "convertFNC1":Z
    .restart local v22    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v28    # "startCode":I
    .restart local v29    # "startPatternInfo":[I
    :pswitch_0
    const/16 v7, 0x65

    .line 262
    .local v7, "codeSet":I
    :goto_1
    const/4 v11, 0x0

    .line 263
    .local v11, "done":Z
    const/4 v13, 0x0

    .line 265
    .local v13, "isNextShifted":Z
    new-instance v24, Ljava/lang/StringBuilder;

    const/16 v32, 0x14

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v24, "result":Ljava/lang/StringBuilder;
    const/16 v32, 0x0

    .line 267
    aget v17, v29, v32

    .local v17, "lastStart":I
    const/16 v32, 0x1

    .line 268
    aget v20, v29, v32

    .local v20, "nextStart":I
    const/16 v32, 0x6

    .line 269
    move/from16 v0, v32

    new-array v10, v0, [I

    .local v10, "counters":[I
    const/4 v15, 0x0

    .local v15, "lastCode":I
    const/4 v6, 0x0

    .line 273
    .local v6, "code":I
    move/from16 v5, v28

    .local v5, "checksumTotal":I
    const/16 v19, 0x0

    .line 275
    .local v19, "multiplier":I
    const/4 v14, 0x1

    .line 276
    .local v14, "lastCharacterWasPrintable":Z
    const/16 v31, 0x0

    .line 277
    .local v31, "upperMode":Z
    const/16 v27, 0x0

    .line 279
    .local v27, "shiftUpperMode":Z
    :cond_2
    :goto_2
    if-nez v11, :cond_1e

    .line 281
    move/from16 v30, v13

    .line 282
    .local v30, "unshift":Z
    const/4 v13, 0x0

    .line 285
    move v15, v6

    .line 288
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v10, v1}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v6

    .line 290
    int-to-byte v0, v6

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v32, 0x6a

    .line 293
    move/from16 v0, v32

    if-ne v6, v0, :cond_3

    :goto_3
    const/16 v32, 0x6a

    .line 298
    move/from16 v0, v32

    if-ne v6, v0, :cond_4

    .line 304
    :goto_4
    move/from16 v17, v20

    .line 305
    array-length v0, v10

    move/from16 v33, v0

    const/16 v32, 0x0

    :goto_5
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_5

    aget v9, v10, v32

    .line 306
    .local v9, "counter":I
    add-int v20, v20, v9

    .line 305
    add-int/lit8 v32, v32, 0x1

    goto :goto_5

    .end local v5    # "checksumTotal":I
    .end local v6    # "code":I
    .end local v7    # "codeSet":I
    .end local v9    # "counter":I
    .end local v10    # "counters":[I
    .end local v11    # "done":Z
    .end local v13    # "isNextShifted":Z
    .end local v14    # "lastCharacterWasPrintable":Z
    .end local v15    # "lastCode":I
    .end local v17    # "lastStart":I
    .end local v19    # "multiplier":I
    .end local v20    # "nextStart":I
    .end local v24    # "result":Ljava/lang/StringBuilder;
    .end local v27    # "shiftUpperMode":Z
    .end local v30    # "unshift":Z
    .end local v31    # "upperMode":Z
    :pswitch_1
    const/16 v7, 0x64

    .line 253
    .restart local v7    # "codeSet":I
    goto :goto_1

    .end local v7    # "codeSet":I
    :pswitch_2
    const/16 v7, 0x63

    .line 256
    .restart local v7    # "codeSet":I
    goto :goto_1

    .line 294
    .restart local v5    # "checksumTotal":I
    .restart local v6    # "code":I
    .restart local v10    # "counters":[I
    .restart local v11    # "done":Z
    .restart local v13    # "isNextShifted":Z
    .restart local v14    # "lastCharacterWasPrintable":Z
    .restart local v15    # "lastCode":I
    .restart local v17    # "lastStart":I
    .restart local v19    # "multiplier":I
    .restart local v20    # "nextStart":I
    .restart local v24    # "result":Ljava/lang/StringBuilder;
    .restart local v27    # "shiftUpperMode":Z
    .restart local v30    # "unshift":Z
    .restart local v31    # "upperMode":Z
    :cond_3
    const/4 v14, 0x1

    goto :goto_3

    .line 299
    :cond_4
    add-int/lit8 v19, v19, 0x1

    .line 300
    mul-int v32, v19, v6

    add-int v5, v5, v32

    goto :goto_4

    .line 310
    :cond_5
    packed-switch v6, :pswitch_data_1

    .line 317
    packed-switch v7, :pswitch_data_2

    .line 478
    :cond_6
    :goto_6
    :pswitch_3
    if-eqz v30, :cond_2

    const/16 v32, 0x65

    .line 479
    move/from16 v0, v32

    if-eq v7, v0, :cond_1d

    const/16 v7, 0x65

    :goto_7
    goto :goto_2

    .line 314
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v32

    throw v32

    :pswitch_5
    const/16 v32, 0x40

    .line 320
    move/from16 v0, v32

    if-lt v6, v0, :cond_7

    const/16 v32, 0x60

    .line 327
    move/from16 v0, v32

    if-lt v6, v0, :cond_9

    const/16 v32, 0x6a

    .line 337
    move/from16 v0, v32

    if-ne v6, v0, :cond_b

    .line 340
    :goto_8
    packed-switch v6, :pswitch_data_3

    goto :goto_6

    .line 369
    :pswitch_6
    const/4 v13, 0x1

    const/16 v7, 0x64

    .line 370
    goto :goto_6

    .line 321
    :cond_7
    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 324
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x80

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :goto_9
    const/16 v27, 0x0

    goto :goto_6

    .line 322
    :cond_8
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 328
    :cond_9
    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_a

    .line 331
    add-int/lit8 v32, v6, 0x40

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :goto_a
    const/16 v27, 0x0

    goto :goto_6

    .line 329
    :cond_a
    add-int/lit8 v32, v6, -0x40

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 338
    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    .line 342
    :pswitch_7
    if-eqz v8, :cond_6

    .line 343
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-eqz v32, :cond_c

    .line 349
    const/16 v32, 0x1d

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_c
    const-string/jumbo v32, "]C1"

    .line 346
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 358
    :pswitch_8
    if-eqz v31, :cond_f

    .line 361
    :cond_d
    if-nez v31, :cond_10

    .line 365
    :cond_e
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 358
    :cond_f
    if-eqz v27, :cond_d

    .line 359
    const/16 v31, 0x1

    .line 360
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 361
    :cond_10
    if-eqz v27, :cond_e

    .line 362
    const/16 v31, 0x0

    .line 363
    const/16 v27, 0x0

    goto/16 :goto_6

    :pswitch_9
    const/16 v7, 0x64

    .line 373
    goto/16 :goto_6

    :pswitch_a
    const/16 v7, 0x63

    .line 376
    goto/16 :goto_6

    .line 379
    :pswitch_b
    const/4 v11, 0x1

    goto/16 :goto_6

    :pswitch_c
    const/16 v32, 0x60

    .line 385
    move/from16 v0, v32

    if-lt v6, v0, :cond_11

    const/16 v32, 0x6a

    .line 393
    move/from16 v0, v32

    if-ne v6, v0, :cond_13

    .line 396
    :goto_b
    packed-switch v6, :pswitch_data_4

    goto/16 :goto_6

    .line 425
    :pswitch_d
    const/4 v13, 0x1

    const/16 v7, 0x65

    .line 426
    goto/16 :goto_6

    .line 386
    :cond_11
    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_12

    .line 389
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x80

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :goto_c
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 387
    :cond_12
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 394
    :cond_13
    const/4 v14, 0x0

    goto :goto_b

    .line 398
    :pswitch_e
    if-eqz v8, :cond_6

    .line 399
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-eqz v32, :cond_14

    .line 405
    const/16 v32, 0x1d

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v32, "]C1"

    .line 402
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 414
    :pswitch_f
    if-eqz v31, :cond_17

    .line 417
    :cond_15
    if-nez v31, :cond_18

    .line 421
    :cond_16
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 414
    :cond_17
    if-eqz v27, :cond_15

    .line 415
    const/16 v31, 0x1

    .line 416
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 417
    :cond_18
    if-eqz v27, :cond_16

    .line 418
    const/16 v31, 0x0

    .line 419
    const/16 v27, 0x0

    goto/16 :goto_6

    :pswitch_10
    const/16 v7, 0x65

    .line 429
    goto/16 :goto_6

    :pswitch_11
    const/16 v7, 0x63

    .line 432
    goto/16 :goto_6

    .line 435
    :pswitch_12
    const/4 v11, 0x1

    goto/16 :goto_6

    :pswitch_13
    const/16 v32, 0x64

    .line 441
    move/from16 v0, v32

    if-lt v6, v0, :cond_19

    const/16 v32, 0x6a

    .line 447
    move/from16 v0, v32

    if-ne v6, v0, :cond_1b

    .line 450
    :goto_d
    packed-switch v6, :pswitch_data_5

    goto/16 :goto_6

    :pswitch_14
    const/16 v7, 0x64

    .line 467
    goto/16 :goto_6

    :cond_19
    const/16 v32, 0xa

    .line 442
    move/from16 v0, v32

    if-lt v6, v0, :cond_1a

    .line 445
    :goto_e
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 443
    :cond_1a
    const/16 v32, 0x30

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 448
    :cond_1b
    const/4 v14, 0x0

    goto :goto_d

    .line 452
    :pswitch_15
    if-eqz v8, :cond_6

    .line 453
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-eqz v32, :cond_1c

    .line 459
    const/16 v32, 0x1d

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1c
    const-string/jumbo v32, "]C1"

    .line 456
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_16
    const/16 v7, 0x65

    .line 464
    goto/16 :goto_6

    .line 470
    :pswitch_17
    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_1d
    const/16 v7, 0x64

    .line 479
    goto/16 :goto_7

    .line 484
    .end local v30    # "unshift":Z
    :cond_1e
    sub-int v16, v20, v17

    .line 489
    .local v16, "lastPatternSize":I
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v20

    .line 491
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v32

    sub-int v33, v20, v17

    div-int/lit8 v33, v33, 0x2

    add-int v33, v33, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 490
    const/16 v33, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v32

    .line 492
    if-eqz v32, :cond_20

    .line 497
    mul-int v32, v19, v15

    sub-int v5, v5, v32

    .line 499
    rem-int/lit8 v32, v5, 0x67

    move/from16 v0, v32

    if-ne v0, v15, :cond_21

    .line 504
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    .line 505
    .local v25, "resultLength":I
    if-eqz v25, :cond_22

    .line 512
    if-gtz v25, :cond_23

    :cond_1f
    :goto_f
    const/16 v32, 0x1

    .line 520
    aget v32, v29, v32

    const/16 v33, 0x0

    aget v33, v29, v33

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v18, v32, v33

    .line 521
    .local v18, "left":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    add-float v26, v32, v33

    .line 523
    .local v26, "right":F
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v23

    .line 524
    .local v23, "rawCodesSize":I
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .local v21, "rawBytes":[B
    const/4 v12, 0x0

    .line 525
    .local v12, "i":I
    :goto_10
    move/from16 v0, v23

    if-ge v12, v0, :cond_25

    .line 526
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Byte;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Byte;->byteValue()B

    move-result v32

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    aput-byte v32, v21, v12

    .line 525
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 493
    .end local v12    # "i":I
    .end local v18    # "left":F
    .end local v21    # "rawBytes":[B
    .end local v23    # "rawCodesSize":I
    .end local v25    # "resultLength":I
    .end local v26    # "right":F
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v32

    throw v32

    .line 500
    :cond_21
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v32

    throw v32

    .line 507
    .restart local v25    # "resultLength":I
    :cond_22
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v32

    throw v32

    .line 512
    :cond_23
    if-eqz v14, :cond_1f

    const/16 v32, 0x63

    .line 513
    move/from16 v0, v32

    if-eq v7, v0, :cond_24

    .line 516
    add-int/lit8 v32, v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 514
    :cond_24
    add-int/lit8 v32, v25, -0x2

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 529
    .restart local v12    # "i":I
    .restart local v18    # "left":F
    .restart local v21    # "rawBytes":[B
    .restart local v23    # "rawCodesSize":I
    .restart local v26    # "right":F
    :cond_25
    new-instance v32, Lcom/google/zxing/Result;

    .line 530
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x2

    .line 532
    move/from16 v0, v34

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    .line 533
    new-instance v36, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v36

    move/from16 v1, v18

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    .line 534
    new-instance v36, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v36

    move/from16 v1, v26

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v36, v34, v35

    .line 535
    sget-object v35, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 529
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v32

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 310
    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 317
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch

    .line 340
    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
    .end packed-switch

    .line 396
    :pswitch_data_4
    .packed-switch 0x60
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
    .end packed-switch

    .line 450
    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method
