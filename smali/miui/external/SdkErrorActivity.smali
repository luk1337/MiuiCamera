.class public Lmiui/external/SdkErrorActivity;
.super Landroid/app/Activity;
.source "SdkErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/external/SdkErrorActivity$1;,
        Lmiui/external/SdkErrorActivity$2;,
        Lmiui/external/SdkErrorActivity$SdkDialogFragment;
    }
.end annotation


# static fields
.field private static final synthetic s:[I


# instance fields
.field private p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Ljava/lang/String;

.field private r:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lmiui/external/SdkErrorActivity$1;

    invoke-direct {v0, p0}, Lmiui/external/SdkErrorActivity$1;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    new-instance v0, Lmiui/external/SdkErrorActivity$2;

    invoke-direct {v0, p0}, Lmiui/external/SdkErrorActivity$2;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 26
    return-void
.end method

.method private G(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 132
    const v1, 0x104000a

    .line 129
    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    const/high16 v1, 0x1040000

    .line 129
    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    const v1, 0x1080027

    .line 129
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private H()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 142
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v1, "MIUI SDK\u53d1\u751f\u9519\u8bef"

    .line 144
    const-string/jumbo v0, "\u8bf7\u91cd\u65b0\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 149
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->K(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-string/jumbo v1, "MIUI SDK encounter errors"

    .line 147
    const-string/jumbo v0, "Please re-install MIUI SDK and then re-run this application."

    goto :goto_0
.end method

.method private I()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->O()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v1, "MIUI SDK\u7248\u672c\u8fc7\u4f4e"

    .line 171
    const-string/jumbo v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 176
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->K(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    const-string/jumbo v1, "MIUI SDK too old"

    .line 174
    const-string/jumbo v0, "Please upgrade MIUI SDK and then re-run this application."

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string/jumbo v1, "MIUI SDK\u7248\u672c\u8fc7\u4f4e"

    .line 180
    const-string/jumbo v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002\u662f\u5426\u73b0\u5728\u5347\u7ea7\uff1f"

    .line 185
    :goto_1
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->r:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lmiui/external/SdkErrorActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2, v3}, Lmiui/external/SdkErrorActivity;->G(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 182
    :cond_2
    const-string/jumbo v1, "MIUI SDK too old"

    .line 183
    const-string/jumbo v0, "Please upgrade MIUI SDK and then re-run this application. Upgrade now?"

    goto :goto_1
.end method

.method private J()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 155
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v1, "\u6ca1\u6709\u627e\u5230MIUI SDK"

    .line 157
    const-string/jumbo v0, "\u8bf7\u5148\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 162
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->K(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    const-string/jumbo v1, "MIUI SDK not found"

    .line 160
    const-string/jumbo v0, "Please install MIUI SDK and then re-run this application."

    goto :goto_0
.end method

.method private K(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    const v1, 0x104000a

    .line 118
    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    const v1, 0x1080027

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private L()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 192
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v1, "MIUI SDK\u6b63\u5728\u66f4\u65b0"

    .line 194
    const-string/jumbo v0, "\u8bf7\u7a0d\u5019..."

    .line 199
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const-string/jumbo v1, "MIUI SDK updating"

    .line 197
    const-string/jumbo v0, "Please wait..."

    goto :goto_0
.end method

.method private M()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 218
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v1, "MIUI SDK\u66f4\u65b0\u5931\u8d25"

    .line 220
    const-string/jumbo v0, "\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    .line 225
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->K(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    const-string/jumbo v1, "MIUI SDK update failed"

    .line 223
    const-string/jumbo v0, "Please try it later."

    goto :goto_0
.end method

.method private N()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 205
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v1, "MIUI SDK\u66f4\u65b0\u5b8c\u6210"

    .line 207
    const-string/jumbo v0, "\u8bf7\u91cd\u65b0\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 212
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->K(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    const-string/jumbo v1, "MIUI SDK updated"

    .line 210
    const-string/jumbo v0, "Please re-run this application."

    goto :goto_0
.end method

.method private O()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 231
    :try_start_0
    invoke-static {}, Lmiui/external/d;->m()Ljava/lang/Class;

    move-result-object v0

    .line 232
    const-string/jumbo v2, "supportUpdate"

    .line 231
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 232
    const-class v4, Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 231
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 233
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 234
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 233
    const/4 v3, 0x0

    .line 231
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private P()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 245
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    invoke-static {}, Lmiui/external/d;->m()Ljava/lang/Class;

    move-result-object v2

    .line 248
    const-string/jumbo v3, "update"

    .line 247
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 248
    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 247
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 249
    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    .line 247
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 253
    :goto_0
    return v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic Q(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->L()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic R(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->M()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic S(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->N()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic T(Lmiui/external/SdkErrorActivity;)Z
    .locals 1

    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->P()Z

    move-result v0

    return v0
.end method

.method private static synthetic U()[I
    .locals 3

    sget-object v0, Lmiui/external/SdkErrorActivity;->s:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/external/SdkErrorActivity;->s:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/external/SdkConstants$SdkError;->values()[Lmiui/external/SdkConstants$SdkError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lmiui/external/SdkErrorActivity;->s:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    const v1, 0x1030055

    invoke-virtual {p0, v1}, Lmiui/external/SdkErrorActivity;->setTheme(I)V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/external/SdkErrorActivity;->q:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lmiui/external/SdkErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v0, "com.miui.sdk.error"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmiui/external/SdkConstants$SdkError;

    .line 42
    :cond_0
    if-nez v0, :cond_1

    .line 43
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    .line 47
    :cond_1
    invoke-static {}, Lmiui/external/SdkErrorActivity;->U()[I

    move-result-object v1

    invoke-virtual {v0}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->H()Landroid/app/Dialog;

    move-result-object v0

    .line 58
    :goto_0
    new-instance v1, Lmiui/external/SdkErrorActivity$SdkDialogFragment;

    invoke-direct {v1, p0, v0}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    invoke-virtual {p0}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "SdkErrorPromptDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 31
    return-void

    .line 49
    :pswitch_0
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->J()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->I()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
