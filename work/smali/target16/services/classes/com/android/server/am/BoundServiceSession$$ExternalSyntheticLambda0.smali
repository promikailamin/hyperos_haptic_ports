.class public final synthetic Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BoundServiceSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BoundServiceSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BoundServiceSession;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BoundServiceSession;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/am/BoundServiceSession;->$r8$lambda$kt8ugU7uEakaR1YHVcBRxL4_dV4(Lcom/android/server/am/BoundServiceSession;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
