# Strategy-Machine
Implementation of a strategy machine for Godot Engine, similar to a state machine but less restrictive (godot 4.1+)


## How to use
1. add a new node `StrategyMachine` node as a child.
2. add a new node `StrategyController` as a child of the `StrategyMachine` node and change the node name.
3. add a new node `Strategy` as a child of the `StrategyMachine` node and change the node name.
4. extend a new script from `StrategyController` and implement behavior between strategies.
5. extend a new script from `Strategy` and implement the `_enter_strategy`, `_exit_strategy` methods.
   
<!-- ![alt text](captures/example.png) -->

## StrategyController

### `func switch_strategy_to(strategy_name: String)`

Turns off the current `Strategy` and switches to the strategy with the specified name.

This function simplifies the use of the machine by abstracting access to the machine's strategies.

### `func enable_strategy(strategy_name: String)`

Enables the `Strategy` with the specified name, without affecting the rest of the strategies.

This function simplifies the use of the machine by abstracting access to the machine's strategies.

### `func disable_strategy(strategy_name: String)`

Disables the `Strategy` with the specified name, without affecting the rest of the strategies.

This function simplifies the use of the machine by abstracting access to the machine's strategies.

### `func toggle_strategy(strategy_name: String)`

Enables or disables a specific `Strategy` with the specified name.

This function simplifies the use of the machine by abstracting access to the machine's strategies.

## Strategy

### `_enter_strategy()`

Called when the strategy is enabled.

### `_exit_strategy()`

Called when the strategy is disabled.

## Example

```gd
extends StrategyController

func _ready():
    switch_strategy_to("Strategy1")
```

```gd
extends Strategy

func _enter_strategy():
    print("Strategy1 enabled")

func _exit_strategy():
    print("Strategy1 disabled")
```

