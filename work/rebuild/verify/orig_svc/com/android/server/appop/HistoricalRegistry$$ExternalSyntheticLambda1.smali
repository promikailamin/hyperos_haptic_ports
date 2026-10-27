.class public final synthetic Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/HistoricalRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/HistoricalRegistry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appop/HistoricalRegistry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appop/HistoricalRegistry;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->$r8$lambda$aiYLvivX7t28FqWoNwjPUksZbrk(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
