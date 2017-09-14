.class public Lcom/android/camera/ui/FlashButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "FlashButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCameraOpened:Z

.field private mDispatching:Z

.field private mIsVideo:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "FlashButton"

    sput-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 38
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method private doTapButton()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 180
    const/4 v1, 0x3

    .line 179
    if-lt v0, v1, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    .line 177
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    goto :goto_0
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRestoredFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPopupShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 333
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 393
    :cond_0
    return-void

    .line 395
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 398
    const v2, 0x7f0c0060

    .line 399
    const/4 v3, 0x2

    move-object v5, v4

    .line 396
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 391
    return-void
.end method

.method private notifyPopupVisibleChange(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 386
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 383
    const/4 v1, 0x4

    .line 384
    const v2, 0x7f0c0060

    .line 385
    const/4 v3, 0x3

    .line 382
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    :cond_0
    return-void
.end method

.method private setRestoredFlashMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 412
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 413
    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    return-void

    .line 416
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    .line 417
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    .end local p1    # "value":Ljava/lang/String;
    :goto_1
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 418
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-eqz v2, :cond_2

    const-string/jumbo p1, "off"

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "auto"

    goto :goto_1
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 193
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 194
    const/4 v0, 0x0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 199
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    .line 187
    return-void
.end method

.method private triggerPopup()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 168
    const/4 v1, 0x3

    .line 167
    if-lt v0, v1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->showPopup()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public avoidTorchOpen()Z
    .locals 4

    .prologue
    .line 78
    const-string/jumbo v0, "torch"

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const-string/jumbo v1, "live"

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 92
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_hdr_key"

    .line 86
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "auto"

    .line 85
    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_2
    const-string/jumbo v0, "off"

    goto :goto_2

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public dismissPopup()Z
    .locals 4

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 356
    const/4 v0, 0x1

    .line 358
    :cond_0
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 364
    packed-switch p1, :pswitch_data_0

    .line 377
    .end local p4    # "extra1":Ljava/lang/Object;
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 366
    .restart local p4    # "extra1":Ljava/lang/Object;
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 367
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    goto :goto_0

    .line 372
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 373
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FlashButton;->notifyPopupVisibleChange(Z)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->enableControls(Z)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 297
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 343
    return-void

    .line 338
    :cond_0
    sget-object v1, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    const-string/jumbo v3, " mPreference="

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    const-string/jumbo v3, " mPopup="

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 347
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 348
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 349
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
    return-void
.end method

.method public initializeXml(Z)V
    .locals 4
    .param p1, "isVideo"    # Z

    .prologue
    const/4 v3, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    .line 43
    if-eqz p1, :cond_2

    const v1, 0x7f060008

    .line 45
    .local v1, "resId":I
    :goto_0
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 48
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 54
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 41
    :cond_1
    return-void

    .line 44
    .end local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1    # "resId":I
    :cond_2
    const v1, 0x7f060004

    .restart local v1    # "resId":I
    goto :goto_0

    .line 49
    .restart local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 50
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public isFlashPressed()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    return v0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepSetValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "flashMode":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "restoredValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    .line 259
    .end local v1    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local v1    # "restoredValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 99
    iput-boolean v8, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    .line 100
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    .line 101
    .local v0, "isFront":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 107
    .local v1, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_4

    .line 108
    const/4 v2, 0x0

    .line 110
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 111
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 112
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 113
    iget-object v5, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues(I)V

    .line 115
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/IconListPreference;->setIconRes(I)V

    .line 116
    if-eqz v0, :cond_5

    .line 117
    const-string/jumbo v4, "on"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v8, :cond_7

    .line 126
    :cond_2
    iput-boolean v7, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 127
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 128
    return-void

    .line 102
    .end local v1    # "parameter":Landroid/hardware/Camera$Parameters;
    :cond_3
    iput-boolean v7, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 103
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 104
    return-void

    .line 109
    .restart local v1    # "parameter":Landroid/hardware/Camera$Parameters;
    :cond_4
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .local v2, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 118
    .end local v2    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    const-string/jumbo v4, "torch"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    const-string/jumbo v4, "torch"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_7
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4, v2}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 131
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-gt v4, v8, :cond_8

    .line 132
    iput-boolean v7, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 133
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 134
    return-void

    .line 137
    :cond_8
    iput-boolean v8, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 138
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_9

    .line 141
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4, v7}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 143
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 145
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v4, :cond_b

    .line 146
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    .line 147
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 148
    iget-object v5, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5, v4, v6, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 150
    :cond_a
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 151
    iget-object v4, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    .line 97
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->doTapButton()V

    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 458
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->initializeXml(Z)V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onResume()V

    .line 71
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    .line 69
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 247
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 243
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public refreshValue()V
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    .line 230
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setImageResource(I)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 227
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 221
    :cond_0
    return-void
.end method

.method public restoreKeptValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "restoredValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 279
    .end local v0    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 p1, 0x0

    .line 316
    .end local p1    # "enabled":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 317
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 308
    :cond_2
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 303
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 254
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 210
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 208
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->initializePopup()V

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 324
    :cond_0
    return-void
.end method

.method public updateFlashModeAccordingHdr(Ljava/lang/String;)V
    .locals 4
    .param p1, "hdrMode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 430
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "storeFlashMode":Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 433
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    const-string/jumbo v2, "auto"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 427
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 431
    .restart local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 437
    :cond_2
    const-string/jumbo v2, "normal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_3
    const-string/jumbo v2, "live"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    goto :goto_1

    .line 453
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updatePopup(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    .line 156
    :cond_1
    return-void
.end method
