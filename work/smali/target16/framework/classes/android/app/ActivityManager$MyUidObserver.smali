.class final Landroid/app/ActivityManager$MyUidObserver;
.super Landroid/app/UidObserver;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyUidObserver"
.end annotation


# instance fields
.field final blacklist mContext:Landroid/content/Context;

.field final blacklist mListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    .registers 3

    .line 218
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 219
    iput-object p1, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 220
    iput-object p2, p0, Landroid/app/ActivityManager$MyUidObserver;->mContext:Landroid/content/Context;

    .line 221
    return-void
.end method


# virtual methods
.method public blacklist onUidGone(IZ)V
    .registers 4

    .line 231
    iget-object p2, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v0, 0x3e8

    invoke-interface {p2, p1, v0}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 232
    return-void
.end method

.method public blacklist onUidStateChanged(IIJI)V
    .registers 6

    .line 225
    iget-object p3, p0, Landroid/app/ActivityManager$MyUidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iget-object p4, p0, Landroid/app/ActivityManager$MyUidObserver;->mContext:Landroid/content/Context;

    invoke-static {p2, p4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result p2

    invoke-interface {p3, p1, p2}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    .line 227
    return-void
.end method
