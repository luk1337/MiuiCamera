.class final Lcom/google/android/apps/photos/api/signature/HexConvert;
.super Ljava/lang/Object;
.source "HexConvert.java"


# static fields
.field private static final HEX_DIGITS_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/photos/api/signature/HexConvert;->HEX_DIGITS_ARRAY:[C

    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const-string/jumbo v3, ""

    return-object v3

    .line 21
    :cond_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 22
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 23
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 24
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/google/android/apps/photos/api/signature/HexConvert;->HEX_DIGITS_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 25
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/google/android/apps/photos/api/signature/HexConvert;->HEX_DIGITS_ARRAY:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v2    # "v":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method
