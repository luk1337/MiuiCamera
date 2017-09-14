.class public Lcom/android/camera/ui/SubScreenIndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "SubScreenIndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mParentPopup:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setClickable(Z)V

    .line 42
    return-void
.end method

.method private initializePopup()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 112
    return-void

    .line 106
    :cond_0
    const-string/jumbo v0, "SubScreenIndicatorButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string/jumbo v2, " mPreference="

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string/jumbo v2, " mPopup="

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method private notifyMessageToDispatcher(I)V
    .locals 6
    .param p1, "msg"    # I

    .prologue
    .line 173
    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessageDispatcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 179
    const/4 v2, 0x0

    .line 180
    const/4 v3, 0x3

    move v1, p1

    move-object v5, p0

    .line 177
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    .line 167
    const/4 v0, 0x1

    return v0

    .line 169
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
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2

    .line 56
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    .line 60
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p2, "p"    # Lcom/android/camera/ui/MessageDispacher;
    .param p3, "popupRoot"    # Landroid/view/ViewGroup;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p7, "parentPopup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 99
    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    .line 101
    check-cast p7, Lcom/android/camera/ui/SubScreenPopup;

    .end local p7    # "parentPopup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    iput-object p7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    .line 98
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 212
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 123
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    .line 128
    return v4

    .line 124
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    .line 125
    return v4

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_b

    if-ne v0, v4, :cond_b

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 131
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->showPopup()V

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 145
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v1, :cond_9

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    .line 149
    :cond_9
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    .line 150
    return v4

    .line 140
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    goto :goto_0

    .line 152
    :cond_b
    return v4
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->updateContent()V

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 66
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 204
    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initializePopup()V

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected updateContent()V
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 187
    :cond_0
    const-string/jumbo v1, "pref_skin_beautify_skin_color_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v1, "pref_skin_beautify_slim_face_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_1

    .line 189
    const-string/jumbo v1, "pref_skin_beautify_skin_smooth_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-nez v1, :cond_1

    .line 190
    const-string/jumbo v1, "pref_skin_beautify_enlarge_eye_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 187
    if-eqz v1, :cond_2

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    .line 192
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 191
    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    .end local v0    # "entry":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "pref_focus_position_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
