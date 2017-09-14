.class public final Lcom/android/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CameraPreference:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ListPreference:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v3, 0x7f010006

    .line 2241
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2242
    const/high16 v1, 0x7f010000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2241
    sput-object v0, Lcom/android/camera/R$styleable;->CameraPreference:[I

    .line 2271
    const v0, 0x7f010007

    .line 2270
    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->IconIndicator:[I

    .line 2310
    const v0, 0x7f010008

    const v1, 0x7f010009

    const v2, 0x7f01000a

    .line 2309
    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->IconListPreference:[I

    .line 2373
    const v0, 0x7f010001

    const v1, 0x7f010002

    const v2, 0x7f010003

    const v3, 0x7f010004

    .line 2374
    const v4, 0x7f010005

    .line 2372
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->ListPreference:[I

    .line 2230
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
