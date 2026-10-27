.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ContentProviderHelper;->lambda$getProviderMimeTypeAsync$0$com-android-server-am-ContentProviderHelper(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    return-void
.end method
