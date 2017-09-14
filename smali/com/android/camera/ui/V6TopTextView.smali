.class public Lcom/android/camera/ui/V6TopTextView;
.super Landroid/widget/TextView;
.source "V6TopTextView.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/AnimateView;


# instance fields
.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private doTapButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 80
    const/4 v1, 0x3

    .line 79
    if-lt v0, v1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 76
    :goto_0
    return-void

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    goto :goto_0

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->toggle()V

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 123
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 274
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_0
    return-object v0

    .line 271
    .local v0, "animation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 272
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 103
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    .line 111
    .end local v0    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    .line 100
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 216
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    .line 217
    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 221
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    .line 222
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
    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    .line 70
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    goto :goto_0
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6TopTextView;->setEnabled(Z)V

    .line 136
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->clearAnimation()V

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :goto_0
    return-void

    .line 253
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 203
    return-void

    .line 198
    :cond_0
    const-string/jumbo v1, "V6TopTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    const-string/jumbo v3, " mPreference="

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    const-string/jumbo v3, " mPopup="

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 207
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 208
    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 209
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyClickToDispatcher()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method protected notifyPopupVisibleChange(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 242
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 41
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    .line 46
    return v3

    .line 42
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    .line 43
    return v3

    .line 47
    :cond_3
    if-ne v0, v3, :cond_8

    .line 48
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 52
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 53
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->doTapButton()V

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v1, :cond_6

    .line 56
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    .line 58
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6TopTextView;->playSoundEffect(I)V

    .line 59
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 61
    :cond_7
    return v3

    .line 63
    :cond_8
    return v3
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    .line 183
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->updateTitle()V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 114
    :cond_0
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/ui/V6TopTextView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 172
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->setVisibility(I)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->clearAnimation()V

    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->initializePopup()V

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    .line 187
    :cond_0
    return-void
.end method

.method protected updateTitle()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method
