.class public final synthetic Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-static {v0, v1, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->$r8$lambda$PmtAlYfcoYIlWlNVTH7Edw4Y1e8(JLcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Z

    move-result p0

    return p0
.end method
