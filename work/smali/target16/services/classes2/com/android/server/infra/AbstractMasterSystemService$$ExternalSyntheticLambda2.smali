.class public final synthetic Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/infra/AbstractMasterSystemService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iput p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$3:[Ljava/lang/String;

    check-cast p1, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->$r8$lambda$RA3RLycuq2feiRoZAhxs-zRKZAc(Lcom/android/server/infra/AbstractMasterSystemService;ILjava/lang/String;[Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V

    return-void
.end method
