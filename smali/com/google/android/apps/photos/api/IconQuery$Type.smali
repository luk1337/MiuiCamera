.class public final enum Lcom/google/android/apps/photos/api/IconQuery$Type;
.super Ljava/lang/Enum;
.source "IconQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/photos/api/IconQuery$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;


# instance fields
.field private final dimensionResourceId:I

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f0b0097

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string/jumbo v1, "BADGE"

    .line 27
    const-string/jumbo v2, "badge"

    const v3, 0x7f0b0098

    .line 26
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 28
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string/jumbo v1, "INTERACT"

    .line 29
    const-string/jumbo v2, "interact"

    .line 28
    invoke-direct {v0, v1, v5, v2, v7}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 30
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string/jumbo v1, "DIALOG"

    .line 31
    const-string/jumbo v2, "dialog"

    .line 30
    invoke-direct {v0, v1, v6, v2, v7}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/photos/api/IconQuery$Type;

    sget-object v1, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->$VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "dimensionResourceId"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->path:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->dimensionResourceId:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/IconQuery$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/photos/api/IconQuery$Type;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->$VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-object v0
.end method


# virtual methods
.method public getDimensionResourceId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->dimensionResourceId:I

    return v0
.end method
