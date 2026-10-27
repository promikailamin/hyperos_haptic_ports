.class public Lmiui/freedrag/FilterRuleData;
.super Ljava/lang/Object;
.source "FilterRuleData.java"


# instance fields
.field private final blacklist rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/freedrag/FilterRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist version:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/freedrag/FilterRuleData;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/freedrag/FilterRule;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lmiui/freedrag/FilterRuleData;->rules:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getVersion()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lmiui/freedrag/FilterRuleData;->version:J

    return-wide v0
.end method
