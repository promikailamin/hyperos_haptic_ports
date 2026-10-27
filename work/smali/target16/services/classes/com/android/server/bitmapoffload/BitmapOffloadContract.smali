.class public abstract Lcom/android/server/bitmapoffload/BitmapOffloadContract;
.super Ljava/lang/Object;
.source "BitmapOffloadContract.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "content://com.android.bitmapoffload/bitmaps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/bitmapoffload/BitmapOffloadContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
