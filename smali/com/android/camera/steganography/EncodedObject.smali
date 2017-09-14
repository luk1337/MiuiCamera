.class public Lcom/android/camera/steganography/EncodedObject;
.super Ljava/lang/Object;
.source "EncodedObject.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    .line 17
    return-void
.end method


# virtual methods
.method public intoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
