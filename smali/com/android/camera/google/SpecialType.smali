.class public final enum Lcom/android/camera/google/SpecialType;
.super Ljava/lang/Enum;
.source "SpecialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/google/SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/google/SpecialType;

.field public static final enum NONE:Lcom/android/camera/google/SpecialType;

.field public static final enum PORTRAIT_TYPE:Lcom/android/camera/google/SpecialType;

.field public static final enum UNKNOWN:Lcom/android/camera/google/SpecialType;


# instance fields
.field private final configuration:Lcom/android/camera/google/ConfigurationImpl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final descriptionResourceId:I

.field private final editActivityClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final iconBadgeResourceId:I

.field final iconDialogResourceId:I

.field private final interactActivityClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private launchActivityClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final nameResourceId:I

.field final typeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v2, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lcom/android/camera/google/SpecialType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v12}, Lcom/android/camera/google/SpecialType;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/android/camera/google/SpecialType;->UNKNOWN:Lcom/android/camera/google/SpecialType;

    .line 16
    new-instance v0, Lcom/android/camera/google/SpecialType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/google/SpecialType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/android/camera/google/SpecialType;->NONE:Lcom/android/camera/google/SpecialType;

    .line 21
    new-instance v0, Lcom/android/camera/google/SpecialType;

    const-string/jumbo v1, "PORTRAIT_TYPE"

    .line 33
    sget-object v11, Lcom/android/camera/google/ConfigurationImpl;->BADGE:Lcom/android/camera/google/ConfigurationImpl;

    .line 26
    const v4, 0x7f0e0237

    .line 27
    const v5, 0x7f0e0238

    .line 28
    const v6, 0x7f0200c7

    .line 29
    const v7, 0x7f0200c8

    move-object v9, v8

    move-object v10, v8

    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/android/camera/google/SpecialType;-><init>(Ljava/lang/String;IIIIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/android/camera/google/ConfigurationImpl;)V

    .line 24
    sput-object v0, Lcom/android/camera/google/SpecialType;->PORTRAIT_TYPE:Lcom/android/camera/google/SpecialType;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/google/SpecialType;

    sget-object v1, Lcom/android/camera/google/SpecialType;->UNKNOWN:Lcom/android/camera/google/SpecialType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/camera/google/SpecialType;->NONE:Lcom/android/camera/google/SpecialType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/google/SpecialType;->PORTRAIT_TYPE:Lcom/android/camera/google/SpecialType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/google/SpecialType;->$VALUES:[Lcom/android/camera/google/SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 79
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    move v6, v4

    move v7, v4

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    .line 78
    invoke-direct/range {v0 .. v11}, Lcom/android/camera/google/SpecialType;-><init>(Ljava/lang/String;IIIIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/android/camera/google/ConfigurationImpl;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/android/camera/google/ConfigurationImpl;)V
    .locals 0
    .param p3, "typeId"    # I
    .param p4, "nameResourceId"    # I
    .param p5, "descriptionResourceId"    # I
    .param p6, "iconBadgeResourceId"    # I
    .param p7, "iconDialogResourceId"    # I
    .param p8    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "configuration"    # Lcom/android/camera/google/ConfigurationImpl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/android/camera/google/ConfigurationImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p8, "editActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p9, "interactActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p10, "launchActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/android/camera/google/SpecialType;->typeId:I

    .line 96
    iput p4, p0, Lcom/android/camera/google/SpecialType;->nameResourceId:I

    .line 97
    iput p5, p0, Lcom/android/camera/google/SpecialType;->descriptionResourceId:I

    .line 98
    iput p6, p0, Lcom/android/camera/google/SpecialType;->iconBadgeResourceId:I

    .line 99
    iput p7, p0, Lcom/android/camera/google/SpecialType;->iconDialogResourceId:I

    .line 100
    iput-object p8, p0, Lcom/android/camera/google/SpecialType;->editActivityClass:Ljava/lang/Class;

    .line 101
    iput-object p9, p0, Lcom/android/camera/google/SpecialType;->interactActivityClass:Ljava/lang/Class;

    .line 102
    iput-object p10, p0, Lcom/android/camera/google/SpecialType;->launchActivityClass:Ljava/lang/Class;

    .line 103
    iput-object p11, p0, Lcom/android/camera/google/SpecialType;->configuration:Lcom/android/camera/google/ConfigurationImpl;

    .line 105
    if-eqz p11, :cond_0

    .line 106
    invoke-virtual {p11, p0}, Lcom/android/camera/google/ConfigurationImpl;->validate(Lcom/android/camera/google/SpecialType;)V

    .line 94
    :cond_0
    return-void
.end method

.method static fromTypeId(I)Lcom/android/camera/google/SpecialType;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_0

    .line 145
    sget-object v0, Lcom/android/camera/google/SpecialType;->UNKNOWN:Lcom/android/camera/google/SpecialType;

    return-object v0

    .line 143
    :pswitch_0
    sget-object v0, Lcom/android/camera/google/SpecialType;->PORTRAIT_TYPE:Lcom/android/camera/google/SpecialType;

    return-object v0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/google/SpecialType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/android/camera/google/SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/google/SpecialType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/google/SpecialType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/camera/google/SpecialType;->$VALUES:[Lcom/android/camera/google/SpecialType;

    return-object v0
.end method


# virtual methods
.method getConfiguration()Lcom/android/camera/google/ConfigurationImpl;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/google/SpecialType;->configuration:Lcom/android/camera/google/ConfigurationImpl;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/google/SpecialType;->configuration:Lcom/android/camera/google/ConfigurationImpl;

    return-object v0
.end method
