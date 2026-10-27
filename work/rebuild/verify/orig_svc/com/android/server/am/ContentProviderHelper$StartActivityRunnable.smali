.class public final Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntent:Landroid/content/Intent;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    .line 1742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1743
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mContext:Landroid/content/Context;

    .line 1744
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mIntent:Landroid/content/Intent;

    .line 1745
    iput-object p3, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
