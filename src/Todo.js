import React from 'react'

export default function todo({todo,toggleTodo, deleteTodo}) {

    function handleTodoClick(){
        console.log("adding: " + todo.id);
        toggleTodo(todo.id);
    }
    function handleTodoDelete(){
        console.log("deleting: " + todo.id);
        deleteTodo(todo.id);
    }

    return (
        <div class="line">
            <input class="lineitem" type="checkbox" checked={todo.complete} onChange={handleTodoClick}/>
            <p class="lineitem">{ todo.name } </p>
            <button class="lineitem" onClick={handleTodoDelete}>Del</button>            
        </div>
    )
}
