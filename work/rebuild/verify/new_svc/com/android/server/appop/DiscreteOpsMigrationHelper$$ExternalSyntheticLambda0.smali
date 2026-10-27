.class public final synthetic Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    invoke-static {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->$r8$lambda$cXPbgwd46zQjFAmaWCA8CyWISQY(Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V

    return-void
.end method
