.class public final synthetic Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$LocalService;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerService$LocalService;->$r8$lambda$gUwsmpTMFqjm00mzpUqRj1QgTTQ(Lcom/android/server/am/ActivityManagerService$LocalService;I)V

    return-void
.end method
