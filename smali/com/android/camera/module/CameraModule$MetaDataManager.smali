.class Lcom/android/camera/module/CameraModule$MetaDataManager;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaDataManager"
.end annotation


# instance fields
.field private mCurrentScene:I

.field private mLastScene:I

.field private mLastestState:I

.field private mLastestTimes:I

.field private mSceneShieldMask:I

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method static synthetic -get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/CameraModule$MetaDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    const/4 v0, -0x1

    .line 5022
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5016
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5017
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5018
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    .line 5019
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 5020
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 5022
    return-void
.end method

.method private applyScene(I)V
    .locals 6
    .param p1, "scene"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5202
    const-string/jumbo v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    packed-switch p1, :pswitch_data_0

    .line 5201
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5205
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5206
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5207
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5208
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/FlashButton;->updatePopup(Z)V

    goto :goto_0

    .line 5212
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 5213
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5214
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5217
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, v5}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 5220
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0, v5}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 5203
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private detectScene(I)I
    .locals 3
    .param p1, "senceResult"    # I

    .prologue
    const/4 v2, 0x0

    .line 5121
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr p1, v0

    .line 5124
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5125
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5124
    if-eqz v0, :cond_0

    .line 5126
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 5127
    return v2

    .line 5128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5129
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5130
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    if-nez v0, :cond_1

    .line 5131
    const-string/jumbo v0, "torch"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5135
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5136
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    .line 5135
    if-eqz v0, :cond_4

    .line 5137
    :cond_2
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5135
    if-eqz v0, :cond_4

    .line 5138
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_4

    .line 5139
    const/4 v0, 0x2

    return v0

    .line 5132
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 5134
    const/4 v0, 0x1

    return v0

    .line 5140
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5141
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    .line 5140
    if-eqz v0, :cond_6

    .line 5142
    :cond_5
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5140
    if-eqz v0, :cond_6

    .line 5143
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    .line 5146
    const/4 v0, 0x3

    return v0

    .line 5149
    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method private filterScene(I)V
    .locals 1
    .param p1, "currentDetect"    # I

    .prologue
    .line 5112
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setScene(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5113
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    .line 5114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5115
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->applyScene(I)V

    .line 5110
    :cond_0
    return-void
.end method

.method private printMetaData([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5088
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 5089
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "%02x"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5091
    :cond_0
    const-string/jumbo v2, "  data[8]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5092
    array-length v2, p1

    if-le v2, v9, :cond_1

    .line 5093
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "%02x"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p1, v9

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5092
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5095
    const-string/jumbo v2, "  mSceneShieldMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02x"

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5096
    const-string/jumbo v2, "  result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02x"

    new-array v5, v7, [Ljava/lang/Object;

    aget-byte v6, p1, v9

    iget v7, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5097
    const-string/jumbo v2, "CameraMetaDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCameraMetaData buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    return-void

    .line 5094
    :cond_1
    const-string/jumbo v2, "not exist"

    goto :goto_1
.end method

.method private resetSceneMode()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 5071
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5072
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    .line 5075
    :cond_0
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5076
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5077
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    .line 5078
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 5070
    return-void
.end method

.method private restoreScene(I)V
    .locals 4
    .param p1, "scene"    # I

    .prologue
    const/16 v3, 0x8

    .line 5172
    const-string/jumbo v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    packed-switch p1, :pswitch_data_0

    .line 5171
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5175
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5176
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5177
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->updatePopup(Z)V

    goto :goto_0

    .line 5181
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 5184
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getAsdIndicator()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5187
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5188
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 5192
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5193
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 5173
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setScene(I)Z
    .locals 5
    .param p1, "scene"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 5153
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 5154
    const-string/jumbo v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mLastestState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mLastestTimes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5155
    const-string/jumbo v2, " mCurrentScene="

    .line 5154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5155
    iget v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    if-eq v0, p1, :cond_2

    .line 5158
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    .line 5159
    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 5168
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 5160
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    if-ge v0, v4, :cond_1

    .line 5161
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    .line 5162
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestTimes:I

    if-ne v4, v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    if-eq v0, v1, :cond_1

    .line 5163
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5164
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastestState:I

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5165
    return v3
.end method


# virtual methods
.method public reset()V
    .locals 0

    .prologue
    .line 5082
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    .line 5083
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    .line 5081
    return-void
.end method

.method public resetFilter()V
    .locals 1

    .prologue
    .line 5064
    const-string/jumbo v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5065
    const-string/jumbo v0, "pref_camera_hdr_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5066
    const-string/jumbo v0, "pref_camera_asd_night_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5067
    const-string/jumbo v0, "pref_camera_asd_motion_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5063
    return-void
.end method

.method public setAsdDetectMask(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 5025
    const/4 v1, 0x0

    .line 5026
    .local v1, "mask":B
    const/4 v2, -0x1

    .line 5027
    .local v2, "scene":I
    const/4 v0, 0x0

    .line 5028
    .local v0, "enable":Z
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdFlash()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "pref_camera_flashmode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5029
    const/4 v1, 0x1

    .line 5030
    const/4 v2, 0x0

    .line 5031
    const-string/jumbo v3, "auto"

    .line 5032
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 5031
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5049
    .end local v0    # "enable":Z
    :cond_0
    :goto_0
    const-string/jumbo v3, "CameraMetaDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAsdDetectMask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    if-eqz v1, :cond_1

    .line 5051
    if-eqz v0, :cond_5

    .line 5052
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 5024
    :cond_1
    :goto_1
    return-void

    .line 5033
    .restart local v0    # "enable":Z
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "pref_camera_hdr_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5034
    const/16 v1, 0x10

    .line 5035
    const/4 v2, 0x1

    .line 5036
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    const v4, 0x7f0e01af

    invoke-virtual {v3, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5037
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 5036
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "enable":Z
    goto :goto_0

    .line 5038
    .local v0, "enable":Z
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5039
    const-string/jumbo v3, "pref_camera_asd_night_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5038
    if-eqz v3, :cond_4

    .line 5040
    const/16 v1, 0x40

    .line 5041
    const/4 v2, 0x2

    .line 5042
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightEnable()Z

    move-result v0

    .local v0, "enable":Z
    goto :goto_0

    .line 5043
    .local v0, "enable":Z
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5044
    const-string/jumbo v3, "pref_camera_asd_motion_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5043
    if-eqz v3, :cond_0

    .line 5045
    const/16 v1, 0x20

    .line 5046
    const/4 v2, 0x3

    .line 5047
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdMotionEnable()Z

    move-result v0

    .local v0, "enable":Z
    goto/16 :goto_0

    .line 5054
    .end local v0    # "enable":Z
    :cond_5
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    not-int v4, v1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 5056
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    if-ne v2, v3, :cond_1

    .line 5057
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    goto :goto_1
.end method

.method public setData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 5101
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_0

    .line 5102
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->printMetaData([B)V

    .line 5104
    :cond_0
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    return-void

    .line 5105
    :cond_1
    const/16 v1, 0x8

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->detectScene(I)I

    move-result v0

    .line 5107
    .local v0, "currentDetect":I
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->filterScene(I)V

    .line 5100
    return-void
.end method
