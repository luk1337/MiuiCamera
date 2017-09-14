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
    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 165
    const/4 v1, 0x3

    .line 164
    if-lt v0, v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    .line 162
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    goto :goto_0
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 225
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
    .line 452
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
    .line 188
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 189
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
    .line 409
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

    .line 318
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

    .line 377
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 378
    :cond_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 383
    const v2, 0x7f090066

    .line 384
    const/4 v3, 0x2

    move-object v5, v4

    .line 381
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 376
    return-void
.end method

.method private notifyPopupVisibleChange(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 366
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 371
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 368
    const/4 v1, 0x4

    .line 369
    const v2, 0x7f090066

    .line 370
    const/4 v3, 0x3

    .line 367
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    :cond_0
    return-void
.end method

.method private setRestoredFlashMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 397
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 398
    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    return-void

    .line 401
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "pref_camera_restored_flashmode_key"

    .line 402
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    .end local p1    # "value":Ljava/lang/String;
    :goto_1
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 403
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
    .line 173
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 178
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 179
    const/4 v0, 0x0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 184
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    .line 172
    return-void
.end method

.method private triggerPopup()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 153
    const/4 v1, 0x3

    .line 152
    if-lt v0, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->showPopup()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public avoidTorchOpen()Z
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, "torch"

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-string/jumbo v1, "live"

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 93
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_hdr_key"

    .line 87
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "auto"

    .line 86
    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_2
    const-string/jumbo v0, "off"

    goto :goto_2

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public dismissPopup()Z
    .locals 4

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 341
    const/4 v0, 0x1

    .line 343
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
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 362
    .end local p4    # "extra1":Ljava/lang/Object;
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 351
    .restart local p4    # "extra1":Ljava/lang/Object;
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 352
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    goto :goto_0

    .line 357
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 358
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FlashButton;->notifyPopupVisibleChange(Z)V

    goto :goto_0

    .line 349
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
    .line 283
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->enableControls(Z)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 282
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
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
    .line 322
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 328
    return-void

    .line 323
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

    .line 324
    const-string/jumbo v3, " mPreference="

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    const-string/jumbo v3, " mPopup="

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 332
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 333
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 321
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
    if-eqz p1, :cond_1

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

    if-nez v2, :cond_0

    .line 49
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 50
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 51
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 52
    return-void

    .line 44
    .end local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f060004

    .restart local v1    # "resId":I
    goto :goto_0

    .line 54
    .restart local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 41
    :cond_3
    return-void
.end method

.method public isFlashPressed()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    return v0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 278
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
    .line 245
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "flashMode":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "restoredValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    .line 244
    .end local v1    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local v1    # "restoredValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 100
    iput-boolean v5, p0, Lcom/android/camera/ui/FlashButton;->mCameraOpened:Z

    .line 101
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 103
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 104
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 105
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 108
    .local v0, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_4

    .line 109
    const/4 v1, 0x0

    .line 111
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mIsVideo:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v5, :cond_6

    .line 114
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 115
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 116
    return-void

    .line 110
    :cond_4
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .local v1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 111
    .end local v1    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    if-eqz v1, :cond_2

    .line 112
    const-string/jumbo v3, "torch"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 119
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-gt v3, v5, :cond_7

    .line 120
    iput-boolean v4, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 121
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 122
    return-void

    .line 125
    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    .line 126
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_8

    .line 129
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 131
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 133
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_9

    .line 134
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    .line 135
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 136
    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    .line 98
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->doTapButton()V

    .line 448
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 443
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->initializeXml(Z)V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onResume()V

    .line 72
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    .line 70
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 232
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 228
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public refreshValue()V
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    .line 215
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setImageResource(I)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 212
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 206
    :cond_0
    return-void
.end method

.method public restoreKeptValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "restoredValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    .line 264
    .end local v0    # "restoredValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FlashButton;->setRestoredFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 p1, 0x0

    .line 301
    .end local p1    # "enabled":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 302
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 293
    :cond_2
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 288
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 239
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->initializePopup()V

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public updateFlashModeAccordingHdr(Ljava/lang/String;)V
    .locals 4
    .param p1, "hdrMode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 415
    invoke-static {}, Lcom/android/camera/ui/FlashButton;->getRestoredFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "storeFlashMode":Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 418
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    const-string/jumbo v2, "auto"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 412
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 416
    .restart local v1    # "storeFlashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 422
    :cond_2
    const-string/jumbo v2, "normal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_3
    const-string/jumbo v2, "live"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    const-string/jumbo v2, "off"

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto :goto_1

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    goto :goto_1

    .line 438
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
    .line 142
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    .line 141
    :cond_1
    return-void
.end method
