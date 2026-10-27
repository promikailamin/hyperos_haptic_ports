.class Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;
.super Ljava/util/HashMap;
.source "MiuiAutoUIPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/MiuiAutoUIPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoUIPathMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 7

    .line 123
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 124
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectOperation;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addRoundRect"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addArc"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddCircleOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddCircleOperation;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addCircle"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddOvalOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddOvalOperation;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addOval"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;

    invoke-direct {v0, v1, v5}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addRect"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$ArcToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$ArcToOperation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "arcTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$CubicToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$CubicToOperation;

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "cubicTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$RCubicToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$RCubicToOperation;

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "rCubicTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$RQuadToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$RQuadToOperation;

    invoke-direct {v0, v1, v4}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "rQuadTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$QuadToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$QuadToOperation;

    invoke-direct {v0, v1, v4}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "quadTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$RLineToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$RLineToOperation;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "rLineTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$RMoveToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$RMoveToOperation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "rMoveTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$MoveToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$MoveToOperation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "moveTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "incReserve"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "setFillType"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$LineToOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$LineToOperation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "lineTo"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddPath1Operation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddPath1Operation;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addPath1"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddPath2Operation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddPath2Operation;

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addPath2"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "addPath3"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "rewind"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$ResetOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$ResetOperation;

    invoke-direct {v0, v1, v5}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "reset"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$OffsetOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$OffsetOperation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "offset"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$SetLastPointOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$SetLastPointOperation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "setLastPoint"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$Transform1Operation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$Transform1Operation;

    invoke-direct {v0, v1, v2}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "transform1"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$Transform2Operation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$Transform2Operation;

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "transform2"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$OpOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$OpOperation;

    invoke-direct {v0, v1, v4}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "op"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    sget-object v1, Lcom/miui/autoui/MiuiAutoUIPath$SetOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$SetOperation;

    invoke-direct {v0, v1, v3}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    const-string v1, "set"

    invoke-virtual {p0, v1, v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method
