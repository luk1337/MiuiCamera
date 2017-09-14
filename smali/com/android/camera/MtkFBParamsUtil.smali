.class public Lcom/android/camera/MtkFBParamsUtil;
.super Ljava/lang/Object;
.source "MtkFBParamsUtil.java"


# static fields
.field private static final ADJUSTMENTS:Ljava/lang/StringBuilder;

.field private static final BASE_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    .line 36
    sget-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "1200,1200,1201,1201,1200,1210,"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "2301,2411,2412,2412,2311,2421,"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "3411,3522,3623,3623,3512,3622,"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "1200,1211,1311,1311,1211,1311,"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "2301,2512,2522,2522,2412,2522,"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "3511,3723,3734,3734,3623,3733,"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    .line 7
    return-void

    .line 46
    :array_0
    .array-data 4
        -0xa
        -0xb
        -0x7
        -0xc
        -0x8
        -0x8
        -0x2
        -0xc
        -0x4
        0x0
        0x0
        -0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 8
    .param p0, "params"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    .param p1, "level"    # Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    .param p2, "face"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    const/4 v6, 0x0

    .line 82
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 83
    :cond_0
    return-void

    .line 86
    :cond_1
    iget v7, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    invoke-static {v7}, Lcom/android/camera/MtkFBParamsUtil;->getGenderIndex(F)I

    move-result v1

    .line 87
    .local v1, "genderIndex":I
    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    .line 88
    return-void

    .line 91
    :cond_2
    if-nez v1, :cond_3

    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    .line 92
    .local v0, "age":F
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    mul-int/lit8 v6, v6, 0x5

    mul-int/lit8 v6, v6, 0x6

    mul-int/lit8 v4, v6, 0x3

    .line 94
    .local v4, "start":I
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->ordinal()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v4, v6

    .line 95
    add-int/lit8 v2, v4, 0xa

    .line 96
    .local v2, "refStart":I
    invoke-static {v0}, Lcom/android/camera/MtkFBParamsUtil;->getAgeIndex(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v4, v6

    .line 98
    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "start":I
    .local v5, "start":I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "refStart":I
    .local v3, "refStart":I
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    .line 99
    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 98
    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 100
    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "start":I
    .restart local v4    # "start":I
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "refStart":I
    .restart local v2    # "refStart":I
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    .line 101
    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    .line 100
    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    .line 102
    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "start":I
    .restart local v5    # "start":I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "refStart":I
    .restart local v3    # "refStart":I
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    .line 103
    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    .line 102
    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    .line 104
    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "start":I
    .restart local v4    # "start":I
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "refStart":I
    .restart local v2    # "refStart":I
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    .line 105
    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    .line 104
    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    .line 81
    return-void

    .line 91
    .end local v0    # "age":F
    .end local v2    # "refStart":I
    .end local v4    # "start":I
    :cond_3
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    .restart local v0    # "age":F
    goto/16 :goto_0

    .line 92
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method private static getAgeIndex(F)I
    .locals 1
    .param p0, "age"    # F

    .prologue
    .line 126
    const/high16 v0, 0x40e00000    # 7.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    .line 129
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 131
    const/4 v0, 0x2

    return v0

    .line 132
    :cond_2
    const/high16 v0, 0x42300000    # 44.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    .line 133
    const/4 v0, 0x3

    return v0

    .line 134
    :cond_3
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_4

    .line 135
    const/4 v0, 0x4

    return v0

    .line 137
    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method private static getBaseValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;)V
    .locals 3
    .param p0, "params"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    .param p1, "level"    # Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->ordinal()I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    .line 73
    .local v0, "baseIndex":I
    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 74
    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    .line 75
    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    .line 76
    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    .line 67
    return-void
.end method

.method private static getGenderIndex(F)I
    .locals 1
    .param p0, "gender"    # F

    .prologue
    .line 149
    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 150
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public static getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 0
    .param p0, "params"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    .param p1, "level"    # Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    .param p2, "face"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/camera/MtkFBParamsUtil;->getBaseValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;)V

    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/camera/MtkFBParamsUtil;->adjustValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 62
    return-void
.end method

.method private static trimValue(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/16 v1, 0xc

    const/16 v0, -0xc

    .line 109
    if-ge p0, v0, :cond_0

    .line 110
    return v0

    .line 111
    :cond_0
    if-le p0, v1, :cond_1

    .line 112
    return v1

    .line 114
    :cond_1
    return p0
.end method
