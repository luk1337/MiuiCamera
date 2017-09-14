.class enum Lcom/android/camera/google/ConfigurationImpl;
.super Ljava/lang/Enum;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/google/ConfigurationImpl$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/google/ConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/google/ConfigurationImpl;

.field public static final enum BADGE:Lcom/android/camera/google/ConfigurationImpl;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/android/camera/google/ConfigurationImpl$1;

    const-string/jumbo v1, "BADGE"

    .line 12
    const-string/jumbo v2, "badge"

    .line 9
    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/google/ConfigurationImpl$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    sput-object v0, Lcom/android/camera/google/ConfigurationImpl;->BADGE:Lcom/android/camera/google/ConfigurationImpl;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/google/ConfigurationImpl;

    sget-object v1, Lcom/android/camera/google/ConfigurationImpl;->BADGE:Lcom/android/camera/google/ConfigurationImpl;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/google/ConfigurationImpl;->$VALUES:[Lcom/android/camera/google/ConfigurationImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/android/camera/google/ConfigurationImpl;->key:Ljava/lang/String;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/camera/google/ConfigurationImpl;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/google/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static checkArgument(ZLjava/lang/String;)V
    .locals 1
    .param p0, "argument"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method private static checkResourceId(ILjava/lang/String;)V
    .locals 3
    .param p0, "resourceId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be a valid resource id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/google/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/google/ConfigurationImpl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/android/camera/google/ConfigurationImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/google/ConfigurationImpl;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/google/ConfigurationImpl;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/android/camera/google/ConfigurationImpl;->$VALUES:[Lcom/android/camera/google/ConfigurationImpl;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/google/ConfigurationImpl;->key:Ljava/lang/String;

    return-object v0
.end method

.method validate(Lcom/android/camera/google/SpecialType;)V
    .locals 2
    .param p1, "specialType"    # Lcom/android/camera/google/SpecialType;

    .prologue
    .line 30
    iget v0, p1, Lcom/android/camera/google/SpecialType;->descriptionResourceId:I

    const-string/jumbo v1, "description"

    invoke-static {v0, v1}, Lcom/android/camera/google/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 31
    iget v0, p1, Lcom/android/camera/google/SpecialType;->iconBadgeResourceId:I

    const-string/jumbo v1, "icon"

    invoke-static {v0, v1}, Lcom/android/camera/google/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 32
    iget v0, p1, Lcom/android/camera/google/SpecialType;->iconDialogResourceId:I

    const-string/jumbo v1, "icon"

    invoke-static {v0, v1}, Lcom/android/camera/google/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 33
    iget v0, p1, Lcom/android/camera/google/SpecialType;->nameResourceId:I

    const-string/jumbo v1, "name"

    invoke-static {v0, v1}, Lcom/android/camera/google/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 29
    return-void
.end method
