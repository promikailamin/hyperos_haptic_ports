.class public final synthetic Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/am/BoundServiceSession$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/BoundServiceSession;->$r8$lambda$FUrQoVPMO03ZifqYD1Kcc-n37q0(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
