.class public final Landroid/os/MiuiBinderTransaction$ILockSettings;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ILockSettings"
.end annotation


# static fields
.field public static final blacklist CHECK_PRIVACY_PASSWORD_PATTERN:I = 0xfffffe

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field public static final blacklist SAVE_PRIVACY_PASSWORD_PATTERN:I = 0xfffffd


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 89
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$ILockSettings;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
