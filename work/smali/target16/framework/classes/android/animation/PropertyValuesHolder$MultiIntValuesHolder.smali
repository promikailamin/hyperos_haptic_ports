.class Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiIntValuesHolder"
.end annotation


# static fields
.field private static final greylist-max-o sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mJniSetter:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .registers 6

    .line 1566
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1567
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 1568
    iput-object p4, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1569
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1570
    return-void
.end method

.method public varargs constructor blacklist <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .registers 6

    .line 1558
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1559
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 1560
    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 1561
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1562
    return-void
.end method


# virtual methods
.method greylist-max-o setAnimatedValue(Ljava/lang/Object;)V
    .registers 13

    .line 1582
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1583
    array-length v1, v0

    .line 1584
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_40

    .line 1585
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_42

    .line 1597
    :pswitch_14
    move-object v4, p1

    iget-wide v1, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    invoke-static {v4, v1, v2, v0}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallMultipleIntMethod(Ljava/lang/Object;J[I)V

    goto :goto_40

    .line 1593
    :pswitch_1b
    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v7, v0, v3

    aget v8, v0, v2

    const/4 v1, 0x2

    aget v9, v0, v1

    const/4 v1, 0x3

    aget v10, v0, v1

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallFourIntMethod(Ljava/lang/Object;JIIII)V

    .line 1595
    goto :goto_40

    .line 1590
    :pswitch_2c
    move-object v4, p1

    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget p1, v0, v3

    aget v0, v0, v2

    invoke-static {v4, v5, v6, p1, v0}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallTwoIntMethod(Ljava/lang/Object;JII)V

    .line 1591
    goto :goto_40

    .line 1587
    :pswitch_37
    move-object v4, p1

    iget-wide v1, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget p1, v0, v3

    invoke-static {v4, v1, v2, p1}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallIntMethod(Ljava/lang/Object;JI)V

    .line 1588
    nop

    .line 1602
    :cond_40
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2c
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method greylist-max-o setupSetter(Ljava/lang/Class;)V
    .registers 8

    .line 1617
    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1618
    return-void

    .line 1620
    :cond_9
    sget-object v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1621
    :try_start_c
    sget-object v1, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1622
    nop

    .line 1623
    if-eqz v1, :cond_30

    .line 1624
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 1625
    if-eqz v2, :cond_31

    .line 1626
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1627
    if-eqz v3, :cond_31

    .line 1628
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    goto :goto_31

    .line 1623
    :cond_30
    const/4 v2, 0x0

    .line 1632
    :cond_31
    :goto_31
    if-nez v2, :cond_70

    .line 1633
    const-string/jumbo v2, "set"

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1634
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->calculateValue(F)V

    .line 1635
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1636
    array-length v3, v3
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_72

    .line 1638
    :try_start_47
    invoke-static {p1, v2, v3}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_47 .. :try_end_4d} :catch_4e
    .catchall {:try_start_47 .. :try_end_4d} :catchall_72

    .line 1647
    goto :goto_59

    .line 1639
    :catch_4e
    move-exception v2

    .line 1642
    :try_start_4f
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_57
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4f .. :try_end_57} :catch_58
    .catchall {:try_start_4f .. :try_end_57} :catchall_72

    .line 1646
    goto :goto_59

    .line 1644
    :catch_58
    move-exception v2

    .line 1648
    :goto_59
    if-nez v1, :cond_65

    .line 1649
    :try_start_5b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1650
    sget-object v2, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    :cond_65
    iget-object p1, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    :cond_70
    monitor-exit v0

    .line 1655
    return-void

    .line 1654
    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_72

    throw p1
.end method

.method greylist-max-o setupSetterAndGetter(Ljava/lang/Object;)V
    .registers 2

    .line 1612
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 1613
    return-void
.end method
