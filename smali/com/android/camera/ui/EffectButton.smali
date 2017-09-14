.class public Lcom/android/camera/ui/EffectButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "EffectButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDispatching:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/EffectPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSavedValue:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "EffectButton"

    sput-object v0, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 44
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 42
    return-void
.end method

.method private doTapButton()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 140
    const/4 v1, 0x3

    .line 139
    if-lt v0, v1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->triggerPopup()V

    .line 137
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->toggle()V

    goto :goto_0
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPopupShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

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

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 331
    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 336
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 333
    const/4 v1, 0x6

    .line 334
    const v2, 0x7f09008e

    .line 335
    const/4 v3, 0x2

    move-object v5, p0

    .line 332
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 339
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    .line 326
    return-void
.end method

.method private refreshIcon()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->findCurrentIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const v0, 0x7f02005a

    .line 149
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setImageResource(I)V

    .line 147
    return-void

    .line 151
    :cond_1
    const v0, 0x7f020059

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 160
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->reloadPreference()V

    .line 166
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    .line 154
    return-void
.end method

.method private triggerPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 124
    const/4 v1, 0x3

    .line 123
    if-lt v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->showPopup()V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "result":Z
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 310
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->stopEffectRender()V

    .line 311
    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 314
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
    .line 320
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    goto :goto_0
.end method

.method public enableControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/EffectButton;->setEnabled(Z)V

    .line 249
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    .line 247
    return-void
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    .line 292
    return-void

    .line 287
    :cond_0
    sget-object v1, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string/jumbo v3, " mPreference="

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string/jumbo v3, " mPopup="

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 296
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/EffectPopup;

    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    .line 297
    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/EffectPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 298
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method public initializeXml()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 51
    .local v0, "preferenceGroup":Lcom/android/camera/preferences/PreferenceGroup;
    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    .line 50
    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 53
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEntries()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEntryValues()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getImageIds()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setIconIds([I)V

    .line 47
    .end local v0    # "preferenceGroup":Lcom/android/camera/preferences/PreferenceGroup;
    :cond_0
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->updateBackground()V

    .line 80
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCreate()V

    .line 69
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->initializeXml()V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/EffectButton;->setVisibility(I)V

    .line 67
    return-void

    .line 70
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 91
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 96
    return v3

    .line 92
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 93
    return v3

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v0, v3, :cond_7

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v1

    if-nez v1, :cond_4

    .line 100
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->doTapButton()V

    .line 103
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->playSoundEffect(I)V

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 106
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 110
    return v3

    .line 112
    :cond_7
    return v3
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public refreshValue()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    .line 194
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    .line 188
    :cond_0
    return-void
.end method

.method public requestEffectRender()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->requestEffectRender()V

    .line 342
    :cond_0
    return-void
.end method

.method public resetSettings()V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    .line 220
    return-void
.end method

.method public restoreSettings()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    .line 227
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 p1, 0x0

    .line 264
    .end local p1    # "enabled":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 265
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/EffectPopup;->setEnabled(Z)V

    .line 256
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public showPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->initializePopup()V

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/EffectPopup;->setOrientation(IZ)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->startEffectRender()V

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 272
    :cond_0
    return-void
.end method
