.class public Lcom/android/camera/portability/Camera2Parameters;
.super Ljava/lang/Object;
.source "Camera2Parameters.java"

# interfaces
.implements Lcom/android/camera/portability/ICameraParameters;


# instance fields
.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mSupportedEffectModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedSceneModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedWhiteBalances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedEffectModes:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedFocusModes:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedSceneModes:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedWhiteBalances:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/android/camera/portability/Camera2Parameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/portability/Camera2Parameters;->buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/portability/Camera2Parameters;->buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/portability/Camera2Parameters;->buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 20
    return-void
.end method

.method private buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 60
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 61
    .local v2, "focuses":[I
    if-eqz v2, :cond_1

    .line 62
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 63
    .local v1, "focus":I
    invoke-static {v1}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera1FocusMode(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "equiv":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    iget-object v5, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedFocusModes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "equiv":Ljava/lang/String;
    .end local v1    # "focus":I
    :cond_1
    return-void
.end method

.method private buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 72
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 73
    .local v2, "scenes":[I
    if-eqz v2, :cond_1

    .line 74
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 75
    .local v1, "scene":I
    invoke-static {v1}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera1SceneMode(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "equiv":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    iget-object v5, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedSceneModes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "equiv":Ljava/lang/String;
    .end local v1    # "scene":I
    :cond_1
    return-void
.end method

.method private buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 84
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 85
    .local v1, "bals":[I
    if-eqz v1, :cond_1

    .line 86
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget v0, v1, v3

    .line 87
    .local v0, "bal":I
    invoke-static {v0}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera1WhiteBalance(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "equiv":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 89
    iget-object v5, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedWhiteBalances:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "bal":I
    .end local v2    # "equiv":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static mapToCamera1FocusMode(I)Ljava/lang/String;
    .locals 3
    .param p0, "camera2FocusMode"    # I

    .prologue
    .line 155
    packed-switch p0, :pswitch_data_0

    .line 170
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 2 focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 157
    :pswitch_0
    const-string/jumbo v0, "auto"

    return-object v0

    .line 159
    :pswitch_1
    const-string/jumbo v0, "continuous-picture"

    return-object v0

    .line 161
    :pswitch_2
    const-string/jumbo v0, "continuous-video"

    return-object v0

    .line 163
    :pswitch_3
    const-string/jumbo v0, "edof"

    return-object v0

    .line 165
    :pswitch_4
    const-string/jumbo v0, "fixed"

    return-object v0

    .line 168
    :pswitch_5
    const-string/jumbo v0, "macro"

    return-object v0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static mapToCamera1SceneMode(I)Ljava/lang/String;
    .locals 3
    .param p0, "camera2Scene"    # I

    .prologue
    .line 196
    packed-switch p0, :pswitch_data_0

    .line 233
    :pswitch_0
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 2 scene mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 198
    :pswitch_1
    const-string/jumbo v0, "auto"

    return-object v0

    .line 200
    :pswitch_2
    const-string/jumbo v0, "action"

    return-object v0

    .line 202
    :pswitch_3
    const-string/jumbo v0, "barcode"

    return-object v0

    .line 204
    :pswitch_4
    const-string/jumbo v0, "beach"

    return-object v0

    .line 206
    :pswitch_5
    const-string/jumbo v0, "candlelight"

    return-object v0

    .line 208
    :pswitch_6
    const-string/jumbo v0, "fireworks"

    return-object v0

    .line 210
    :pswitch_7
    const-string/jumbo v0, "landscape"

    return-object v0

    .line 212
    :pswitch_8
    const-string/jumbo v0, "night"

    return-object v0

    .line 214
    :pswitch_9
    const-string/jumbo v0, "night-portrait"

    return-object v0

    .line 216
    :pswitch_a
    const-string/jumbo v0, "party"

    return-object v0

    .line 218
    :pswitch_b
    const-string/jumbo v0, "portrait"

    return-object v0

    .line 220
    :pswitch_c
    const-string/jumbo v0, "snow"

    return-object v0

    .line 222
    :pswitch_d
    const-string/jumbo v0, "sports"

    return-object v0

    .line 224
    :pswitch_e
    const-string/jumbo v0, "steadyphoto"

    return-object v0

    .line 226
    :pswitch_f
    const-string/jumbo v0, "sunset"

    return-object v0

    .line 228
    :pswitch_10
    const-string/jumbo v0, "theatre"

    return-object v0

    .line 230
    :pswitch_11
    const-string/jumbo v0, "hdr"

    return-object v0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_c
        :pswitch_f
        :pswitch_e
        :pswitch_6
        :pswitch_d
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method public static mapToCamera1WhiteBalance(I)Ljava/lang/String;
    .locals 3
    .param p0, "camera2Wb"    # I

    .prologue
    .line 279
    packed-switch p0, :pswitch_data_0

    .line 297
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 2 white balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 281
    :pswitch_0
    const-string/jumbo v0, "auto"

    return-object v0

    .line 283
    :pswitch_1
    const-string/jumbo v0, "cloudy-daylight"

    return-object v0

    .line 285
    :pswitch_2
    const-string/jumbo v0, "daylight"

    return-object v0

    .line 287
    :pswitch_3
    const-string/jumbo v0, "fluorescent"

    return-object v0

    .line 289
    :pswitch_4
    const-string/jumbo v0, "incandescent"

    return-object v0

    .line 291
    :pswitch_5
    const-string/jumbo v0, "shade"

    return-object v0

    .line 293
    :pswitch_6
    const-string/jumbo v0, "twilight"

    return-object v0

    .line 295
    :pswitch_7
    const-string/jumbo v0, "warm-fluorescent"

    return-object v0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static mapToCamera2AntiBanding(Ljava/lang/String;)I
    .locals 4
    .param p0, "camera1AntiBanding"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 96
    if-eqz p0, :cond_3

    .line 97
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    const-string/jumbo v0, "50hz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_1
    const-string/jumbo v0, "60hz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x2

    return v0

    .line 97
    :cond_2
    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    return v3

    .line 108
    :cond_3
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 anti banding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v3
.end method

.method public static mapToCamera2FlashMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "camera1FlashMode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 113
    if-eqz p0, :cond_3

    .line 114
    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x2

    return v0

    .line 114
    :cond_0
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    return v3

    .line 114
    :cond_1
    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x3

    return v0

    .line 114
    :cond_2
    const-string/jumbo v0, "red-eye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const/4 v0, 0x4

    return v0

    .line 125
    :cond_3
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 flash mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v3
.end method

.method public static mapToCamera2SceneMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "camera1Scene"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 238
    if-eqz p0, :cond_f

    .line 239
    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    return v3

    .line 239
    :cond_0
    const-string/jumbo v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x2

    return v0

    .line 239
    :cond_1
    const-string/jumbo v0, "barcode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    const/16 v0, 0x10

    return v0

    .line 239
    :cond_2
    const-string/jumbo v0, "beach"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    const/16 v0, 0x8

    return v0

    .line 239
    :cond_3
    const-string/jumbo v0, "candlelight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    const/16 v0, 0xf

    return v0

    .line 239
    :cond_4
    const-string/jumbo v0, "fireworks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    const/16 v0, 0xc

    return v0

    .line 239
    :cond_5
    const-string/jumbo v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 253
    const/4 v0, 0x4

    return v0

    .line 239
    :cond_6
    const-string/jumbo v0, "night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    const/4 v0, 0x5

    return v0

    .line 239
    :cond_7
    const-string/jumbo v0, "party"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    const/16 v0, 0xe

    return v0

    .line 239
    :cond_8
    const-string/jumbo v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 259
    const/4 v0, 0x3

    return v0

    .line 239
    :cond_9
    const-string/jumbo v0, "snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 261
    const/16 v0, 0x9

    return v0

    .line 239
    :cond_a
    const-string/jumbo v0, "sports"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    const/16 v0, 0xd

    return v0

    .line 239
    :cond_b
    const-string/jumbo v0, "steadyphoto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 265
    const/16 v0, 0xb

    return v0

    .line 239
    :cond_c
    const-string/jumbo v0, "sunset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 267
    const/16 v0, 0xa

    return v0

    .line 239
    :cond_d
    const-string/jumbo v0, "theatre"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 269
    const/4 v0, 0x7

    return v0

    .line 239
    :cond_e
    const-string/jumbo v0, "hdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 271
    const/16 v0, 0x12

    return v0

    .line 274
    :cond_f
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 scene mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v3
.end method

.method public static mapToCamera2WhiteBalance(Ljava/lang/String;)I
    .locals 4
    .param p0, "camera1Wb"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 302
    if-eqz p0, :cond_7

    .line 303
    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    return v3

    .line 303
    :cond_0
    const-string/jumbo v0, "cloudy-daylight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x6

    return v0

    .line 303
    :cond_1
    const-string/jumbo v0, "daylight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const/4 v0, 0x5

    return v0

    .line 303
    :cond_2
    const-string/jumbo v0, "fluorescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    const/4 v0, 0x3

    return v0

    .line 303
    :cond_3
    const-string/jumbo v0, "incandescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    const/4 v0, 0x2

    return v0

    .line 303
    :cond_4
    const-string/jumbo v0, "shade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    const/16 v0, 0x8

    return v0

    .line 303
    :cond_5
    const-string/jumbo v0, "twilight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    const/4 v0, 0x7

    return v0

    .line 303
    :cond_6
    const-string/jumbo v0, "warm-fluorescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 319
    const/4 v0, 0x4

    return v0

    .line 322
    :cond_7
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 white balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v3
.end method


# virtual methods
.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedEffectModes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedFocusModes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedSceneModes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedWhiteBalances:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
