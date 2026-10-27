.class public Lcom/android/server/wm/MirrorActiveUidsStub;
.super Ljava/lang/Object;
.source "MirrorActiveUidsStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MirrorActiveUidsStub$SINGLETON;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/MirrorActiveUidsStub;
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/wm/MirrorActiveUidsStub$SINGLETON;->INSTANCE:Lcom/android/server/wm/MirrorActiveUidsStub;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 25
    return-void
.end method

.method public hasVisibleWindowForUser(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public onVisibleWindowForUserChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "visible"    # Z

    .line 22
    return-void
.end method
