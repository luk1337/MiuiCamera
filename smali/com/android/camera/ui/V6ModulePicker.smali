.class public Lcom/android/camera/ui/V6ModulePicker;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ModulePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCurrentModule:I


# instance fields
.field private mEnabled:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6ModulePicker;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6ModulePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method

.method public static getCurrentModule()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return v0
.end method

.method private initModulePickView()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const v0, 0x7f02013c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    return-void

    .line 117
    :cond_0
    const v0, 0x7f020034

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static isCameraModule()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 72
    sget v1, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDualModule()Z
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanoramaModule()Z
    .locals 2

    .prologue
    .line 76
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoModule()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    sget v1, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentModule(I)V
    .locals 0
    .param p0, "module"    # I

    .prologue
    .line 105
    sput p0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    .line 104
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModulePicker;->setEnabled(Z)V

    .line 54
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCameraOpen()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 85
    sget-object v0, Lcom/android/camera/ui/V6ModulePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ModulePicker onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v0, v2, :cond_4

    const/4 v7, 0x0

    .line 87
    .local v7, "module":I
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isMonoSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isRAWSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v6

    .line 90
    .local v6, "cameraId":I
    invoke-static {v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v8

    .line 91
    .local v8, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string/jumbo v0, "pref_camera_mono_mode_key"

    invoke-static {v8, v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Lcom/android/camera/preferences/CameraSettingPreferences;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string/jumbo v0, "pref_camera_raw_mode_key"

    invoke-static {v8, v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Lcom/android/camera/preferences/CameraSettingPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    :cond_1
    const/4 v7, 0x3

    .line 94
    .end local v6    # "cameraId":I
    .end local v8    # "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 95
    const/4 v1, 0x0

    .line 96
    const v2, 0x7f090015

    .line 97
    const/4 v3, 0x2

    .line 95
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 84
    return-void

    .line 86
    .end local v7    # "module":I
    :cond_4
    const/4 v7, 0x1

    .restart local v7    # "module":I
    goto :goto_0

    .line 92
    .restart local v6    # "cameraId":I
    .restart local v8    # "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCreate()V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 33
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    .line 34
    iget-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-eqz v1, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/android/camera/ui/V6ModulePicker;->initModulePickView()V

    .line 30
    :cond_1
    return-void

    .line 33
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 44
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    .line 41
    return-void

    .line 44
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-nez v0, :cond_0

    .line 62
    const/16 p1, 0x8

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 60
    return-void
.end method
