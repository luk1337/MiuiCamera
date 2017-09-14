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
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setClickable(Z)V

    .line 47
    return-void
.end method

.method private filterPreference()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 132
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1

    .line 134
    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    array-length v7, v7

    if-eqz v7, :cond_0

    .line 136
    const/4 v6, 0x0

    .line 137
    .local v6, "reload":Z
    const-string/jumbo v7, "pref_qc_camera_exposuretime_key"

    iget-object v8, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 138
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 140
    .local v3, "exposureTimes":[Ljava/lang/CharSequence;
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    .local v0, "currentTime":I
    array-length v7, v3

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 142
    aget-object v7, v3, v4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 143
    .local v2, "exTime":I
    if-ne v2, v0, :cond_4

    .line 161
    .end local v0    # "currentTime":I
    .end local v2    # "exTime":I
    .end local v3    # "exposureTimes":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    .line 131
    :cond_3
    return-void

    .line 145
    .restart local v0    # "currentTime":I
    .restart local v2    # "exTime":I
    .restart local v3    # "exposureTimes":[Ljava/lang/CharSequence;
    .restart local v4    # "i":I
    :cond_4
    if-le v0, v2, :cond_5

    .line 146
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7, v4}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    const/4 v6, 0x1

    goto :goto_1

    .line 141
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 151
    .end local v0    # "currentTime":I
    .end local v2    # "exTime":I
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "exposureTimes":[Ljava/lang/CharSequence;
    :cond_6
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v8, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 156
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 157
    iget-object v7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7, v9}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 158
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private filterPreference(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 168
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "preferenceEntries":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "preferenceEntryValues":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v6, :cond_1

    const v2, 0x1e8480

    .line 173
    .local v2, "maxExposure":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMinExposureTimes(Landroid/content/Context;)I

    move-result v3

    .line 175
    .local v3, "minExposure":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 176
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "entryValue":I
    if-gt v3, v0, :cond_2

    if-gt v0, v2, :cond_2

    .line 179
    :goto_2
    aget-object v6, v4, v1

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    aget-object v6, v5, v1

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v0    # "entryValue":I
    .end local v1    # "i":I
    .end local v2    # "maxExposure":I
    .end local v3    # "minExposure":I
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes(Landroid/content/Context;)I

    move-result v2

    .restart local v2    # "maxExposure":I
    goto :goto_0

    .line 178
    .restart local v0    # "entryValue":I
    .restart local v1    # "i":I
    .restart local v3    # "minExposure":I
    :cond_2
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e013c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 177
    if-eqz v6, :cond_0

    goto :goto_2

    .line 166
    .end local v0    # "entryValue":I
    :cond_3
    return-void
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 271
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
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 193
    return-void

    .line 187
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

    .line 188
    const-string/jumbo v2, " mPreference="

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string/jumbo v2, " mPopup="

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private notifyMessageToDispatcher(I)V
    .locals 6
    .param p1, "msg"    # I

    .prologue
    .line 275
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

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 281
    const/4 v2, 0x0

    .line 282
    const/4 v3, 0x3

    move v1, p1

    move-object v5, p0

    .line 279
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method private rebuildPreference()V
    .locals 4

    .prologue
    .line 121
    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    sget-boolean v2, Lcom/android/camera/Device;->IS_XIAOMI:Z

    .line 121
    if-eqz v2, :cond_0

    .line 122
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v2

    .line 121
    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->filterPreference(Ljava/util/List;Ljava/util/List;)V

    .line 126
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 119
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 258
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    .line 266
    .end local v0    # "index":I
    :cond_1
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    .line 255
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
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
    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    .line 58
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    .line 62
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShowedColor()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getShowedColor()I

    move-result v0

    return v0

    .line 83
    :cond_0
    sget v0, Lcom/android/camera/ui/SubScreenIndicatorButton;->TEXT_COLOR_DEFAULT:I

    return v0
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
    .line 113
    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    .line 114
    check-cast p7, Lcom/android/camera/ui/SubScreenPopup;

    .end local p7    # "parentPopup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    iput-object p7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    .line 115
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->rebuildPreference()V

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->filterPreference()V

    .line 112
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->onDestroy()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 327
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->onDismiss()V

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->removeOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 321
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 314
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    .line 317
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

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 204
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    .line 209
    return v4

    .line 205
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    .line 206
    return v4

    .line 210
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_c

    if-ne v0, v4, :cond_c

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 216
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 217
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->showPopup()V

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 226
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 227
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setPressed(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 232
    :cond_9
    :goto_1
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    .line 233
    return v4

    .line 221
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    goto :goto_0

    .line 229
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->toggle()V

    goto :goto_1

    .line 235
    :cond_c
    return v4
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->updateContent()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 68
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 306
    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initializePopup()V

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SubScreenPopup;->showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 238
    :cond_0
    return-void
.end method

.method protected updateContent()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 289
    :cond_0
    const-string/jumbo v1, "pref_skin_beautify_skin_color_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    const-string/jumbo v1, "pref_skin_beautify_slim_face_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 289
    if-nez v1, :cond_1

    .line 291
    const-string/jumbo v1, "pref_skin_beautify_skin_smooth_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 289
    if-nez v1, :cond_1

    .line 292
    const-string/jumbo v1, "pref_skin_beautify_enlarge_eye_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 289
    if-eqz v1, :cond_2

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    .line 294
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 293
    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_0
    return-void

    .line 295
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

    .line 296
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setNumberText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0    # "entry":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "pref_focus_position_key"

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 299
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
