.class final Lcom/android/server/apphibernation/AppHibernationService$LocalService;
.super Lcom/android/server/apphibernation/AppHibernationManagerInternal;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalService"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/apphibernation/AppHibernationService;

    .line 806
    invoke-direct {p0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;-><init>()V

    .line 807
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 808
    return-void
.end method


# virtual methods
.method public isHibernatingForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 812
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOatArtifactDeletionEnabled()Z
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$misOatArtifactDeletionEnabled(Lcom/android/server/apphibernation/AppHibernationService;)Z

    move-result v0

    return v0
.end method

.method public setHibernatingForUser(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isHibernating"    # Z

    .line 817
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 818
    return-void
.end method

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHibernating"    # Z

    .line 822
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 823
    return-void
.end method
