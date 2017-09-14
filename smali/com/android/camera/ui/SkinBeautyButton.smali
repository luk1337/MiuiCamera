.class public Lcom/android/camera/ui/SkinBeautyButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SkinBeautyButton$1;,
        Lcom/android/camera/ui/SkinBeautyButton$2;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mVisible:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 38
    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$1;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$2;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SkinBeautyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPopupShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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
    const/4 v4, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 267
    const/4 v1, 0x0

    .line 268
    const v2, 0x7f090068

    .line 269
    const/4 v3, 0x2

    move-object v5, v4

    .line 266
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    :cond_0
    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    .line 179
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 181
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    .line 182
    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 185
    :cond_0
    return v0
.end method

.method protected dismissSubPopup()Z
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 127
    :cond_0
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 261
    .end local p4    # "extra1":Ljava/lang/Object;
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 227
    .restart local p4    # "extra1":Ljava/lang/Object;
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_1
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    .line 229
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_3

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto :goto_0

    .line 240
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 241
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 242
    .local v6, "visible":Z
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 247
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 244
    const/4 v1, 0x4

    .line 245
    const v2, 0x7f090068

    .line 246
    const/4 v3, 0x3

    .line 243
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    :cond_4
    if-eqz v6, :cond_6

    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 251
    if-eqz v0, :cond_0

    .line 253
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto/16 :goto_0

    .line 256
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto/16 :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 166
    return-void

    .line 160
    :cond_1
    const-string/jumbo v1, "SkinBeautyButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    const-string/jumbo v3, " mPreference="

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    const-string/jumbo v3, " mPopup="

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 170
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 171
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method protected initializeSubPopup()V
    .locals 5

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    .line 136
    .local v2, "subPopup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 138
    return-void

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v1

    .line 142
    .local v1, "root":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 144
    .local v0, "group":Lcom/android/camera/preferences/PreferenceGroup;
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v4

    aput-object v2, v3, v4

    .line 134
    return-void
.end method

.method public onCameraOpen()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 59
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 61
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 62
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    .line 63
    return-void

    .line 65
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    .line 66
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    .line 75
    .local v0, "popup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    .line 74
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "popup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showPopup()V

    .line 283
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 276
    return-void

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onFinishInflate()V

    .line 52
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/android/camera/ui/V6AbstractSettingPopup;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 50
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    move-result v0

    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    return-void
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 88
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializePopup()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    .line 149
    :cond_0
    return-void
.end method

.method protected showSubPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializeSubPopup()V

    .line 104
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    .line 105
    .local v0, "subPopup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 107
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eq v1, v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    .line 115
    :cond_1
    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 102
    return-void
.end method
