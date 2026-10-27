.class public Lcom/android/server/lineage/common/UserContentObserver$2;
.super Ljava/lang/Object;
.source "UserContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/common/UserContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/common/UserContentObserver;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/lineage/common/UserContentObserver$2;->this$0:Lcom/android/server/lineage/common/UserContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/lineage/common/UserContentObserver$2;->this$0:Lcom/android/server/lineage/common/UserContentObserver;

    invoke-virtual {p0}, Lcom/android/server/lineage/common/UserContentObserver;->update()V

    return-void
.end method
