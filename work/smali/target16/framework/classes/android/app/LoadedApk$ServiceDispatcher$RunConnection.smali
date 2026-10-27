.class final Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunConnection"
.end annotation


# instance fields
.field final blacklist mBinderSession:Landroid/app/IBinderSession;

.field final greylist-max-o mCommand:I

.field final greylist-max-o mDead:Z

.field final greylist-max-o mName:Landroid/content/ComponentName;

.field final greylist-max-o mService:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/app/LoadedApk$ServiceDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2359
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    .line 2361
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    .line 2362
    iput-object p4, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mBinderSession:Landroid/app/IBinderSession;

    .line 2363
    iput p5, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    .line 2364
    iput-boolean p6, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mDead:Z

    .line 2365
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 2369
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    if-nez v0, :cond_12

    .line 2370
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mBinderSession:Landroid/app/IBinderSession;

    iget-boolean v4, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mDead:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;Z)V

    goto :goto_20

    .line 2371
    :cond_12
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 2372
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2374
    :cond_20
    :goto_20
    return-void
.end method
