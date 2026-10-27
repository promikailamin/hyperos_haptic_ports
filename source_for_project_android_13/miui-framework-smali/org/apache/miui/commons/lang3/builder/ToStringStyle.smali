.class public abstract Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/miui/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/miui/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/miui/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/miui/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

.field public static final blacklist MULTI_LINE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

.field public static final blacklist NO_FIELD_NAMES_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

.field private static final blacklist REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist SHORT_PREFIX_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

.field public static final blacklist SIMPLE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

.field private static final whitelist serialVersionUID:J = -0x23ea08d00c05296cL


# instance fields
.field private blacklist arrayContentDetail:Z

.field private blacklist arrayEnd:Ljava/lang/String;

.field private blacklist arraySeparator:Ljava/lang/String;

.field private blacklist arrayStart:Ljava/lang/String;

.field private blacklist contentEnd:Ljava/lang/String;

.field private blacklist contentStart:Ljava/lang/String;

.field private blacklist defaultFullDetail:Z

.field private blacklist fieldNameValueSeparator:Ljava/lang/String;

.field private blacklist fieldSeparator:Ljava/lang/String;

.field private blacklist fieldSeparatorAtEnd:Z

.field private blacklist fieldSeparatorAtStart:Z

.field private blacklist nullText:Ljava/lang/String;

.field private blacklist sizeEndText:Ljava/lang/String;

.field private blacklist sizeStartText:Ljava/lang/String;

.field private blacklist summaryObjectEndText:Ljava/lang/String;

.field private blacklist summaryObjectStartText:Ljava/lang/String;

.field private blacklist useClassName:Z

.field private blacklist useFieldNames:Z

.field private blacklist useIdentityHashCode:Z

.field private blacklist useShortClassName:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 96
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 107
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 119
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 129
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 137
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 4

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 219
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useClassName:Z

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    .line 229
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 234
    const-string v2, "["

    iput-object v2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 239
    const-string v2, "]"

    iput-object v2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 244
    const-string v2, "="

    iput-object v2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 249
    iput-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 254
    iput-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 259
    const-string v1, ","

    iput-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 264
    const-string v2, "{"

    iput-object v2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 274
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    .line 279
    const-string v1, "}"

    iput-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 285
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    .line 290
    const-string v0, "<null>"

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 295
    const-string v0, "<size="

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 300
    const-string v0, ">"

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 305
    const-string v1, "<"

    iput-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 319
    return-void
.end method

.method static blacklist getRegistry()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 149
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static blacklist isRegistered(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 164
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 165
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method static blacklist register(Ljava/lang/Object;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 178
    if-eqz p0, :cond_1a

    .line 179
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 180
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_12

    .line 181
    sget-object v1, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 183
    :cond_12
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1a
    return-void
.end method

.method static blacklist unregister(Ljava/lang/Object;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 200
    if-eqz p0, :cond_16

    .line 201
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 202
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_16

    .line 203
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 205
    sget-object v1, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 209
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_16
    return-void
.end method


# virtual methods
.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 724
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 726
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 752
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 754
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 780
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 782
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 808
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 810
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 668
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 670
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 640
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 642
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 431
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 433
    if-nez p3, :cond_9

    .line 434
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_10

    .line 437
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 440
    :goto_10
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 696
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 698
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 836
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 838
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1143
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1145
    if-nez p3, :cond_9

    .line 1146
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1148
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1149
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_16

    .line 1152
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 1155
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1204
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1206
    if-nez p3, :cond_9

    .line 1207
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1209
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1210
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_16

    .line 1213
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 1216
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1217
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1265
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1267
    if-nez p3, :cond_9

    .line 1268
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1270
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1271
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_16

    .line 1274
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 1277
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1326
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1328
    if-nez p3, :cond_9

    .line 1329
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1331
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1332
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_16

    .line 1335
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 1338
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1339
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1021
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1023
    if-nez p3, :cond_9

    .line 1024
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1026
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1027
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_16

    .line 1030
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 1033
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 960
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 962
    if-nez p3, :cond_9

    .line 963
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 965
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 966
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_16

    .line 969
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 972
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 864
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 866
    if-nez p3, :cond_9

    .line 867
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 869
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 870
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 873
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1082
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1084
    if-nez p3, :cond_9

    .line 1085
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1087
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1088
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_16

    .line 1091
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 1094
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method public blacklist append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .line 1387
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1389
    if-nez p3, :cond_9

    .line 1390
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_16

    .line 1392
    :cond_9
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1393
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_16

    .line 1396
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 1399
    :goto_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1400
    return-void
.end method

.method protected blacklist appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1444
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_24

    if-eqz p2, :cond_24

    .line 1445
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1446
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_19

    .line 1447
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 1449
    :cond_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1452
    :cond_24
    :goto_24
    return-void
.end method

.method protected blacklist appendContentEnd(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1483
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1484
    return-void
.end method

.method protected blacklist appendContentStart(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1474
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1475
    return-void
.end method

.method protected blacklist appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 574
    invoke-static {p1, p3}, Lorg/apache/miui/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 575
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 738
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 739
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 766
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 767
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 794
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 795
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 822
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 823
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 682
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 683
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 654
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 655
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 587
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 588
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 599
    .local p3, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 600
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 611
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 612
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 710
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 711
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 850
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 851
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .line 1168
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1170
    if-lez v0, :cond_10

    .line 1171
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1173
    :cond_10
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 1169
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1175
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .line 1229
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1231
    if-lez v0, :cond_10

    .line 1232
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    :cond_10
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1236
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .line 1290
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1292
    if-lez v0, :cond_10

    .line 1293
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1295
    :cond_10
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1297
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1298
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .line 1351
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1353
    if-lez v0, :cond_10

    .line 1354
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1356
    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1358
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 1046
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1048
    if-lez v0, :cond_10

    .line 1049
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1051
    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1053
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1054
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .line 985
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 986
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 987
    if-lez v0, :cond_10

    .line 988
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 990
    :cond_10
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 992
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_20

    .line 893
    aget-object v1, p3, v0

    .line 894
    .local v1, "item":Ljava/lang/Object;
    if-lez v0, :cond_12

    .line 895
    iget-object v2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 897
    :cond_12
    if-nez v1, :cond_18

    .line 898
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1d

    .line 901
    :cond_18
    iget-boolean v2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 892
    .end local v1    # "item":Ljava/lang/Object;
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 904
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .line 1107
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1109
    if-lez v0, :cond_10

    .line 1110
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1112
    :cond_10
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1114
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1115
    return-void
.end method

.method protected blacklist appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .line 1412
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 1414
    if-lez v0, :cond_10

    .line 1415
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1417
    :cond_10
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 1413
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1419
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1420
    return-void
.end method

.method public blacklist appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 387
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_7

    .line 388
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 390
    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 391
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method protected blacklist appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1527
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 1528
    return-void
.end method

.method protected blacklist appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 1504
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1505
    return-void
.end method

.method protected blacklist appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1514
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 1515
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1516
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1518
    :cond_e
    return-void
.end method

.method protected blacklist appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1461
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    .line 1462
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1463
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1464
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    :cond_1b
    return-void
.end method

.method protected blacklist appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "detail"    # Z

    .line 463
    invoke-static {p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_16

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_16

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_16

    .line 465
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    return-void

    .line 469
    :cond_16
    invoke-static {p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 472
    :try_start_19
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_33

    .line 473
    if-eqz p4, :cond_27

    .line 474
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_119

    .line 476
    :cond_27
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_119

    .line 479
    :cond_33
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4d

    .line 480
    if-eqz p4, :cond_41

    .line 481
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_119

    .line 483
    :cond_41
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_119

    .line 486
    :cond_4d
    instance-of v0, p3, [J

    if-eqz v0, :cond_63

    .line 487
    if-eqz p4, :cond_5b

    .line 488
    move-object v0, p3

    check-cast v0, [J

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_119

    .line 490
    :cond_5b
    move-object v0, p3

    check-cast v0, [J

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_119

    .line 493
    :cond_63
    instance-of v0, p3, [I

    if-eqz v0, :cond_79

    .line 494
    if-eqz p4, :cond_71

    .line 495
    move-object v0, p3

    check-cast v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_119

    .line 497
    :cond_71
    move-object v0, p3

    check-cast v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_119

    .line 500
    :cond_79
    instance-of v0, p3, [S

    if-eqz v0, :cond_8f

    .line 501
    if-eqz p4, :cond_87

    .line 502
    move-object v0, p3

    check-cast v0, [S

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_119

    .line 504
    :cond_87
    move-object v0, p3

    check-cast v0, [S

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_119

    .line 507
    :cond_8f
    instance-of v0, p3, [B

    if-eqz v0, :cond_a5

    .line 508
    if-eqz p4, :cond_9d

    .line 509
    move-object v0, p3

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_119

    .line 511
    :cond_9d
    move-object v0, p3

    check-cast v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_119

    .line 514
    :cond_a5
    instance-of v0, p3, [C

    if-eqz v0, :cond_ba

    .line 515
    if-eqz p4, :cond_b3

    .line 516
    move-object v0, p3

    check-cast v0, [C

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_119

    .line 518
    :cond_b3
    move-object v0, p3

    check-cast v0, [C

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_119

    .line 521
    :cond_ba
    instance-of v0, p3, [D

    if-eqz v0, :cond_ce

    .line 522
    if-eqz p4, :cond_c7

    .line 523
    move-object v0, p3

    check-cast v0, [D

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_119

    .line 525
    :cond_c7
    move-object v0, p3

    check-cast v0, [D

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_119

    .line 528
    :cond_ce
    instance-of v0, p3, [F

    if-eqz v0, :cond_e2

    .line 529
    if-eqz p4, :cond_db

    .line 530
    move-object v0, p3

    check-cast v0, [F

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_119

    .line 532
    :cond_db
    move-object v0, p3

    check-cast v0, [F

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_119

    .line 535
    :cond_e2
    instance-of v0, p3, [Z

    if-eqz v0, :cond_f6

    .line 536
    if-eqz p4, :cond_ef

    .line 537
    move-object v0, p3

    check-cast v0, [Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_119

    .line 539
    :cond_ef
    move-object v0, p3

    check-cast v0, [Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_119

    .line 542
    :cond_f6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 543
    if-eqz p4, :cond_109

    .line 544
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_119

    .line 546
    :cond_109
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_119

    .line 550
    :cond_110
    if-eqz p4, :cond_116

    .line 551
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_119

    .line 553
    :cond_116
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_119
    .catchall {:try_start_19 .. :try_end_119} :catchall_11e

    .line 557
    :goto_119
    invoke-static {p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 558
    nop

    .line 559
    return-void

    .line 557
    :catchall_11e
    move-exception v0

    invoke-static {p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 558
    throw v0
.end method

.method protected blacklist appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1495
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    return-void
.end method

.method public blacklist appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .line 369
    if-eqz p2, :cond_12

    .line 370
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 373
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_12

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 377
    :cond_12
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .line 1188
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1189
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .line 1249
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1250
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .line 1310
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1311
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .line 1371
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1372
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 1066
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1067
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .line 1005
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1006
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .line 944
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 945
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .line 1127
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1128
    return-void
.end method

.method protected blacklist appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .line 1432
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1433
    return-void
.end method

.method protected blacklist appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "size"    # I

    .line 1546
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1547
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1548
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1549
    return-void
.end method

.method public blacklist appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "superToString"    # Ljava/lang/String;

    .line 334
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public blacklist appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "toString"    # Ljava/lang/String;

    .line 348
    if-eqz p2, :cond_2c

    .line 349
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    .local v0, "pos1":I
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 351
    .local v1, "pos2":I
    if-eq v0, v1, :cond_2c

    if-ltz v0, :cond_2c

    if-ltz v1, :cond_2c

    .line 352
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "data":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v3, :cond_26

    .line 354
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 356
    :cond_26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 360
    .end local v0    # "pos1":I
    .end local v1    # "pos2":I
    .end local v2    # "data":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method protected blacklist getArrayEnd()Ljava/lang/String;
    .registers 2

    .line 1746
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getArraySeparator()Ljava/lang/String;
    .registers 2

    .line 1772
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getArrayStart()Ljava/lang/String;
    .registers 2

    .line 1720
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getContentEnd()Ljava/lang/String;
    .registers 2

    .line 1824
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getContentStart()Ljava/lang/String;
    .registers 2

    .line 1798
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getFieldNameValueSeparator()Ljava/lang/String;
    .registers 2

    .line 1850
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getFieldSeparator()Ljava/lang/String;
    .registers 2

    .line 1876
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getNullText()Ljava/lang/String;
    .registers 2

    .line 1950
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1582
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSizeEndText()Ljava/lang/String;
    .registers 2

    .line 2011
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getSizeStartText()Ljava/lang/String;
    .registers 2

    .line 1979
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getSummaryObjectEndText()Ljava/lang/String;
    .registers 2

    .line 2075
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getSummaryObjectStartText()Ljava/lang/String;
    .registers 2

    .line 2043
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist isArrayContentDetail()Z
    .registers 2

    .line 1700
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected blacklist isDefaultFullDetail()Z
    .registers 2

    .line 1679
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected blacklist isFieldSeparatorAtEnd()Z
    .registers 2

    .line 1928
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected blacklist isFieldSeparatorAtStart()Z
    .registers 2

    .line 1904
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected blacklist isFullDetail(Ljava/lang/Boolean;)Z
    .registers 3
    .param p1, "fullDetailRequest"    # Ljava/lang/Boolean;

    .line 1566
    if-nez p1, :cond_5

    .line 1567
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return v0

    .line 1569
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected blacklist isUseClassName()Z
    .registers 2

    .line 1596
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected blacklist isUseFieldNames()Z
    .registers 2

    .line 1658
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected blacklist isUseIdentityHashCode()Z
    .registers 2

    .line 1638
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected blacklist isUseShortClassName()Z
    .registers 2

    .line 1617
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected blacklist reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # Ljava/lang/Object;

    .line 917
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 919
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_25

    .line 920
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 921
    .local v2, "item":Ljava/lang/Object;
    if-lez v1, :cond_17

    .line 922
    iget-object v3, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    :cond_17
    if-nez v2, :cond_1d

    .line 925
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_22

    .line 928
    :cond_1d
    iget-boolean v3, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 919
    .end local v2    # "item":Ljava/lang/Object;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 931
    .end local v1    # "i":I
    :cond_25
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    return-void
.end method

.method protected blacklist removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 402
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 403
    .local v1, "sepLen":I
    if-lez v0, :cond_32

    if-lez v1, :cond_32

    if-lt v0, v1, :cond_32

    .line 404
    const/4 v2, 0x1

    .line 405
    .local v2, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_2b

    .line 406
    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_28

    .line 407
    const/4 v2, 0x0

    .line 408
    goto :goto_2b

    .line 405
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 411
    .end local v3    # "i":I
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_32

    .line 412
    sub-int v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 415
    .end local v2    # "match":Z
    :cond_32
    return-void
.end method

.method protected blacklist setArrayContentDetail(Z)V
    .registers 2
    .param p1, "arrayContentDetail"    # Z

    .line 1709
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    .line 1710
    return-void
.end method

.method protected blacklist setArrayEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "arrayEnd"    # Ljava/lang/String;

    .line 1758
    if-nez p1, :cond_4

    .line 1759
    const-string p1, ""

    .line 1761
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 1762
    return-void
.end method

.method protected blacklist setArraySeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "arraySeparator"    # Ljava/lang/String;

    .line 1784
    if-nez p1, :cond_4

    .line 1785
    const-string p1, ""

    .line 1787
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 1788
    return-void
.end method

.method protected blacklist setArrayStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "arrayStart"    # Ljava/lang/String;

    .line 1732
    if-nez p1, :cond_4

    .line 1733
    const-string p1, ""

    .line 1735
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 1736
    return-void
.end method

.method protected blacklist setContentEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentEnd"    # Ljava/lang/String;

    .line 1836
    if-nez p1, :cond_4

    .line 1837
    const-string p1, ""

    .line 1839
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 1840
    return-void
.end method

.method protected blacklist setContentStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentStart"    # Ljava/lang/String;

    .line 1810
    if-nez p1, :cond_4

    .line 1811
    const-string p1, ""

    .line 1813
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 1814
    return-void
.end method

.method protected blacklist setDefaultFullDetail(Z)V
    .registers 2
    .param p1, "defaultFullDetail"    # Z

    .line 1689
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1690
    return-void
.end method

.method protected blacklist setFieldNameValueSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldNameValueSeparator"    # Ljava/lang/String;

    .line 1862
    if-nez p1, :cond_4

    .line 1863
    const-string p1, ""

    .line 1865
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 1866
    return-void
.end method

.method protected blacklist setFieldSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldSeparator"    # Ljava/lang/String;

    .line 1888
    if-nez p1, :cond_4

    .line 1889
    const-string p1, ""

    .line 1891
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 1892
    return-void
.end method

.method protected blacklist setFieldSeparatorAtEnd(Z)V
    .registers 2
    .param p1, "fieldSeparatorAtEnd"    # Z

    .line 1939
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 1940
    return-void
.end method

.method protected blacklist setFieldSeparatorAtStart(Z)V
    .registers 2
    .param p1, "fieldSeparatorAtStart"    # Z

    .line 1915
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 1916
    return-void
.end method

.method protected blacklist setNullText(Ljava/lang/String;)V
    .registers 2
    .param p1, "nullText"    # Ljava/lang/String;

    .line 1962
    if-nez p1, :cond_4

    .line 1963
    const-string p1, ""

    .line 1965
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 1966
    return-void
.end method

.method protected blacklist setSizeEndText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sizeEndText"    # Ljava/lang/String;

    .line 2026
    if-nez p1, :cond_4

    .line 2027
    const-string p1, ""

    .line 2029
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 2030
    return-void
.end method

.method protected blacklist setSizeStartText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sizeStartText"    # Ljava/lang/String;

    .line 1994
    if-nez p1, :cond_4

    .line 1995
    const-string p1, ""

    .line 1997
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 1998
    return-void
.end method

.method protected blacklist setSummaryObjectEndText(Ljava/lang/String;)V
    .registers 2
    .param p1, "summaryObjectEndText"    # Ljava/lang/String;

    .line 2090
    if-nez p1, :cond_4

    .line 2091
    const-string p1, ""

    .line 2093
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 2094
    return-void
.end method

.method protected blacklist setSummaryObjectStartText(Ljava/lang/String;)V
    .registers 2
    .param p1, "summaryObjectStartText"    # Ljava/lang/String;

    .line 2058
    if-nez p1, :cond_4

    .line 2059
    const-string p1, ""

    .line 2061
    :cond_4
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 2062
    return-void
.end method

.method protected blacklist setUseClassName(Z)V
    .registers 2
    .param p1, "useClassName"    # Z

    .line 1605
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useClassName:Z

    .line 1606
    return-void
.end method

.method protected blacklist setUseFieldNames(Z)V
    .registers 2
    .param p1, "useFieldNames"    # Z

    .line 1667
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 1668
    return-void
.end method

.method protected blacklist setUseIdentityHashCode(Z)V
    .registers 2
    .param p1, "useIdentityHashCode"    # Z

    .line 1647
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 1648
    return-void
.end method

.method protected blacklist setUseShortClassName(Z)V
    .registers 2
    .param p1, "useShortClassName"    # Z

    .line 1627
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    .line 1628
    return-void
.end method
