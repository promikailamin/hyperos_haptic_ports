.class Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ContentProviderHelper;->getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WithCallingIdentityRequest"
.end annotation


# instance fields
.field final callingIdentity:J

.field final realTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/am/ContentProviderHelper;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/Runnable;Landroid/net/Uri;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/ContentProviderHelper;
    .param p2, "realTask"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1134
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iput-object p3, p0, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;->callingIdentity:J

    .line 1137
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;->realTask:Ljava/lang/Runnable;

    .line 1138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1146
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;->callingIdentity:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1147
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;->realTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 1150
    goto :goto_26

    .line 1148
    :catch_b
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query mime type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper$1WithCallingIdentityRequest;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method
