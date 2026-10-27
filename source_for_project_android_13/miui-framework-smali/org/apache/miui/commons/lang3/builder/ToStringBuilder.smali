.class public Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final blacklist buffer:Ljava/lang/StringBuffer;

.field private final blacklist object:Ljava/lang/Object;

.field private final blacklist style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 228
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 240
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    if-nez p2, :cond_9

    .line 255
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    .line 257
    :cond_9
    if-nez p3, :cond_13

    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object p3, v0

    .line 260
    :cond_13
    iput-object p3, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 261
    iput-object p2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 262
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 264
    invoke-virtual {p2, p3, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public static blacklist getDefaultStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .registers 1

    .line 118
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static blacklist reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 153
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist reflectionToString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 166
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist reflectionToString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .line 180
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist reflectionToString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/miui/commons/lang3/builder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 201
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setDefaultStyle(Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V
    .registers 3
    .param p0, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 137
    if-eqz p0, :cond_5

    .line 140
    sput-object p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 141
    return-void

    .line 138
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist append(B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # B

    .line 305
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 306
    return-object p0
.end method

.method public blacklist append(C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # C

    .line 333
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 334
    return-object p0
.end method

.method public blacklist append(D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "value"    # D

    .line 361
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 362
    return-object p0
.end method

.method public blacklist append(F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # F

    .line 389
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 390
    return-object p0
.end method

.method public blacklist append(I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # I

    .line 417
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 418
    return-object p0
.end method

.method public blacklist append(J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "value"    # J

    .line 445
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 446
    return-object p0
.end method

.method public blacklist append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 474
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 574
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 575
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 619
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 620
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 665
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 666
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 711
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 712
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 757
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 758
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 803
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 804
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 849
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 850
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .line 864
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 865
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 910
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 911
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 528
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 529
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .line 586
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 587
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[BZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "fullDetail"    # Z

    .line 606
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 607
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C

    .line 632
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 633
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[CZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C
    .param p3, "fullDetail"    # Z

    .line 652
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 653
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D

    .line 678
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 679
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[DZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D
    .param p3, "fullDetail"    # Z

    .line 698
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 699
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .line 724
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 725
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[FZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F
    .param p3, "fullDetail"    # Z

    .line 744
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 745
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I

    .line 770
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 771
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[IZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I
    .param p3, "fullDetail"    # Z

    .line 790
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 791
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J

    .line 816
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 817
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[JZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J
    .param p3, "fullDetail"    # Z

    .line 836
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 837
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 878
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .line 897
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 898
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S

    .line 923
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 924
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[SZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S
    .param p3, "fullDetail"    # Z

    .line 943
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 944
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z

    .line 541
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 542
    return-object p0
.end method

.method public blacklist append(Ljava/lang/String;[ZZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z
    .param p3, "fullDetail"    # Z

    .line 561
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 562
    return-object p0
.end method

.method public blacklist append(S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # S

    .line 501
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 502
    return-object p0
.end method

.method public blacklist append(Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "value"    # Z

    .line 277
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 278
    return-object p0
.end method

.method public blacklist append([B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [B

    .line 319
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 320
    return-object p0
.end method

.method public blacklist append([C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [C

    .line 347
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 348
    return-object p0
.end method

.method public blacklist append([D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [D

    .line 375
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 376
    return-object p0
.end method

.method public blacklist append([F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [F

    .line 403
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 404
    return-object p0
.end method

.method public blacklist append([I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [I

    .line 431
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 432
    return-object p0
.end method

.method public blacklist append([J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [J

    .line 459
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 460
    return-object p0
.end method

.method public blacklist append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 488
    return-object p0
.end method

.method public blacklist append([S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [S

    .line 515
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 516
    return-object p0
.end method

.method public blacklist append([Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1, "array"    # [Z

    .line 291
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 292
    return-object p0
.end method

.method public blacklist appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 957
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 958
    return-object p0
.end method

.method public blacklist appendSuper(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 4
    .param p1, "superToString"    # Ljava/lang/String;

    .line 976
    if-eqz p1, :cond_9

    .line 977
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 979
    :cond_9
    return-object p0
.end method

.method public blacklist appendToString(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .registers 4
    .param p1, "toString"    # Ljava/lang/String;

    .line 1010
    if-eqz p1, :cond_9

    .line 1011
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1013
    :cond_9
    return-object p0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Ljava/lang/String;
    .registers 2

    .line 1078
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObject()Ljava/lang/Object;
    .registers 2

    .line 1023
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getStringBuffer()Ljava/lang/StringBuffer;
    .registers 2

    .line 1032
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public blacklist getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .registers 2

    .line 1044
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1059
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1060
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 1062
    :cond_16
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 1064
    :goto_23
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
