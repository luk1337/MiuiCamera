.class public Lcom/android/camera/ui/V6IndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "V6IndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mModeRemind:Landroid/view/View;

.field private mOverrideValue:Ljava/lang/String;

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/IconListPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Lcom/android/camera/preferences/IconListPreference;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    .line 26
    return-void
.end method

.method private notifyClickAction(Z)V
    .locals 6
    .param p1, "click"    # Z

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->cancelRemind(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const-string/jumbo v0, "pref_camera_panoramamode_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 163
    const/16 v1, 0x9

    .line 164
    const/4 v2, 0x0

    .line 165
    const/4 v3, 0x3

    move-object v5, p0

    .line 162
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private notifyToModule()V
    .locals 6

    .prologue
    .line 193
    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessageDispacher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 198
    const/4 v1, 0x6

    .line 199
    const/4 v2, 0x0

    .line 200
    const/4 v3, 0x3

    move-object v5, p0

    .line 197
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method private onIndicatorValueChange()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->resetOtherSetting()V

    .line 93
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->refreshValue()V

    .line 94
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updatePopup()V

    .line 95
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->notifyToModule()V

    .line 90
    return-void
.end method

.method private refreshValue()V
    .locals 3

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e017c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    :goto_0
    const-string/jumbo v0, "pref_camera_manual_mode_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateFocusMode()V

    .line 98
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetOtherSetting()V
    .locals 6

    .prologue
    .line 182
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 184
    const/16 v1, 0x8

    .line 185
    const/4 v2, 0x0

    .line 186
    const/4 v3, 0x3

    move-object v5, p0

    .line 183
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    :cond_0
    return-void
.end method

.method private updateExitButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "txtId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 147
    iget-boolean v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePopup()V
    .locals 3

    .prologue
    .line 131
    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePopup this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string/jumbo v2, " value="

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string/jumbo v2, " default="

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->showPopup()V

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    goto :goto_0
.end method

.method private updateRemind()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    return v1
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V
    .locals 2
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p2, "p"    # Lcom/android/camera/ui/MessageDispacher;
    .param p3, "popupRoot"    # Landroid/view/ViewGroup;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    .line 42
    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/TwoStateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6IndicatorButton;->setClickable(Z)V

    .line 45
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateExitButton()V

    .line 46
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updatePopup()V

    .line 47
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateRemind()V

    .line 40
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected initializePopup()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected isIndicatorSelected()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    return v0
.end method

.method public isItemSelected()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    return v0
.end method

.method public isPopupVisible()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    const-string/jumbo v3, "Camera5"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visible="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " this="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    iget-object v4, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 223
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    .line 84
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/camera/ui/TwoStateImageView;

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/ui/V6IndicatorButton;->notifyClickAction(Z)V

    .line 85
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->onIndicatorValueChange()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 81
    :cond_2
    return-void

    .line 82
    :cond_3
    return-void

    .line 83
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->onFinishInflate()V

    .line 35
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6IndicatorButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    .line 33
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 247
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    move-result v0

    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 5
    .param p1, "keyValues"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "valid":Z
    iput-object v4, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 58
    aget-object v1, p1, v0

    .line 59
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v3, p1, v4

    .line 60
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    const/4 v2, 0x1

    .line 62
    iput-object v3, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 63
    if-nez v3, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6IndicatorButton;->setEnabled(Z)V

    .line 67
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    .line 54
    :cond_1
    return-void

    .line 63
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 238
    const-string/jumbo v0, "Camera5"

    const-string/jumbo v1, "indicatorbutton reloadPreference"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateImage()V

    .line 240
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateExitButton()V

    .line 241
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateRemind()V

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 237
    :cond_0
    return-void
.end method

.method public resetSettings()V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    .line 207
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->onIndicatorValueChange()V

    .line 208
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    .line 205
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 111
    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->initializePopup()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 172
    :cond_0
    return-void
.end method
