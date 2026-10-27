.class public final Landroid/os/MiuiBinderTransaction$IClipboard;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IClipboard"
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.IClipboard"

.field public static final blacklist GET_CLIPBOARD_CLICKTRACE:I = 0xfffffe


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 95
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IClipboard;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
