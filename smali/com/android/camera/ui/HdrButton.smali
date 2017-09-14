.class public Lcom/android/camera/ui/HdrButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "HdrButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsVideo:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/HdrButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method private doTapButton()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 262
    const/4 v1, 0x3

    .line 261
    if-lt v0, v1, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->showPopup()V

    .line 258
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    goto :goto_0

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->toggle()V

    goto :goto_0
.end method

.method private filterPreference()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v2, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v3, v7, v5

    .line 188
    .local v3, "value":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    .end local v3    # "value":Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v5, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-eqz v5, :cond_4

    .line 192
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 214
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5, v2}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 217
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5, v4}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 219
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 185
    :cond_2
    return-void

    .line 193
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "on"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_4
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 207
    :cond_5
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v5, :cond_6

    .line 208
    const-string/jumbo v5, "normal"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v5

    if-nez v5, :cond_1

    .line 211
    const-string/jumbo v5, "auto"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_7
    const-string/jumbo v5, "live"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 200
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_5

    .line 201
    const-string/jumbo v5, "normal"

    aget-object v7, v0, v1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 202
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e01b9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 200
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 289
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializePopup()V
    .locals 4

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 330
    return-void

    .line 325
    :cond_0
    const-string/jumbo v1, "HdrButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    const-string/jumbo v3, " mPreference="

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    const-string/jumbo v3, " mPopup="

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    .line 334
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 335
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 336
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method private isPopupShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 146
    const/4 v1, 0x0

    .line 147
    const v2, 0x7f090067

    .line 148
    const/4 v3, 0x2

    move-object v5, v4

    .line 145
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 141
    return-void
.end method

.method private notifyPopupVisibleChange(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 157
    const/4 v1, 0x4

    .line 158
    const v2, 0x7f090067

    .line 159
    const/4 v3, 0x3

    .line 156
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 276
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 284
    .end local v0    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 273
    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 166
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public dismissPopup()Z
    .locals 4

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 343
    const/4 v0, 0x1

    .line 345
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
    .line 299
    packed-switch p1, :pswitch_data_0

    .line 312
    .end local p4    # "extra1":Ljava/lang/Object;
    .end local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 301
    .restart local p4    # "extra1":Ljava/lang/Object;
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    .line 302
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_0

    .line 307
    .restart local p5    # "extra2":Ljava/lang/Object;
    :pswitch_2
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 308
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "extra1":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HdrButton;->notifyPopupVisibleChange(Z)V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->enableControls(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 349
    :cond_0
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initializeXml(Z)V
    .locals 6
    .param p1, "isVideo"    # Z

    .prologue
    const/16 v4, 0x8

    .line 41
    iput-boolean p1, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    .line 42
    if-eqz p1, :cond_1

    const v1, 0x7f060009

    .line 44
    .local v1, "resId":I
    :goto_0
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    iput-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 46
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->filterPreference()V

    .line 48
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_2

    .line 51
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 52
    return-void

    .line 43
    .end local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f060005

    .restart local v1    # "resId":I
    goto :goto_0

    .line 54
    .restart local v0    # "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v2

    .line 55
    .local v2, "visible":Z
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    .line 40
    return-void

    :cond_3
    move v3, v4

    .line 55
    goto :goto_1
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->clearAnimation()V

    .line 118
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v5

    .line 118
    if-nez v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 122
    return-void

    .line 126
    :cond_1
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/camera/ui/HdrButton;->mIsVideo:Z

    if-ne v5, v6, :cond_3

    .line 127
    iget-object v5, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v1

    .line 128
    .local v1, "visible":Z
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 129
    if-eqz v1, :cond_6

    move-object v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 131
    .end local v1    # "visible":Z
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    .line 138
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    .line 113
    :cond_5
    return-void

    .line 129
    .end local v0    # "value":Ljava/lang/String;
    .restart local v1    # "visible":Z
    :cond_6
    const-string/jumbo v2, "off"

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->doTapButton()V

    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 244
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HdrButton;->initializeXml(Z)V

    .line 62
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 66
    return-void
.end method

.method public refreshValue()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->findCurrentIndex()I

    move-result v0

    .line 94
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setImageResource(I)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 91
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 71
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 108
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 86
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->initializePopup()V

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 315
    :cond_0
    return-void
.end method

.method public updateHdrAccordingFlash(Ljava/lang/String;)V
    .locals 2
    .param p1, "flashMode"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "hdrMode":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "auto"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 223
    :cond_1
    :goto_1
    return-void

    .line 227
    :cond_2
    const-string/jumbo v1, "off"

    goto :goto_0

    .line 230
    :cond_3
    const-string/jumbo v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_1

    .line 235
    :cond_4
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setValue(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_1
.end method

.method public updateVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->couldBeVisible()Z

    move-result v0

    .line 174
    .local v0, "visible":Z
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 175
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 177
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->isFlashPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    .line 181
    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HdrButton;->setVisibility(I)V

    .line 172
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 174
    goto :goto_0

    .line 175
    :cond_3
    const-string/jumbo v1, "off"

    goto :goto_1

    .line 181
    :cond_4
    const/16 v1, 0x8

    goto :goto_2
.end method
