.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->$r8$lambda$VVBkqvg1RyThw5MaWDaLL8Cci1U(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
