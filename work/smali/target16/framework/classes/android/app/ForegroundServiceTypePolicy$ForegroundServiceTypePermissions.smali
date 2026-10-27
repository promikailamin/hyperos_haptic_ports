.class public Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundServiceTypePermissions"
.end annotation


# instance fields
.field final blacklist mAllOf:Z

.field final blacklist mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;


# direct methods
.method public constructor blacklist <init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V
    .registers 3

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    .line 1077
    iput-boolean p2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    .line 1078
    return-void
.end method


# virtual methods
.method public blacklist checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 12

    .line 1086
    iget-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 1087
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v3, v0

    move v4, v2

    :goto_a
    if-ge v4, v3, :cond_19

    aget-object v5, v0, v4

    .line 1088
    move-object p0, v5

    invoke-virtual/range {p0 .. p5}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v5

    .line 1090
    if-eqz v5, :cond_16

    .line 1091
    return v1

    .line 1087
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1094
    :cond_19
    return v2

    .line 1096
    :cond_1a
    nop

    .line 1097
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v3, v0

    move v4, v2

    :goto_1f
    if-ge v4, v3, :cond_30

    aget-object v5, v0, v4

    .line 1098
    move-object p0, v5

    invoke-virtual/range {p0 .. p5}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v5

    .line 1100
    if-nez v5, :cond_2d

    .line 1101
    nop

    .line 1102
    const/4 p1, 0x1

    goto :goto_31

    .line 1097
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_30
    move p1, v2

    .line 1105
    :goto_31
    if-eqz p1, :cond_34

    move v1, v2

    :cond_34
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1112
    const-string v1, "allOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    iget-boolean v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1114
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1116
    const/4 v1, 0x0

    :goto_1a
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v2, v2

    if-ge v1, v2, :cond_34

    .line 1117
    if-lez v1, :cond_26

    .line 1118
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    :cond_26
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1122
    :cond_34
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist toStringArray(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 1129
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->addToList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1128
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1131
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method
