import React, { useState, useRef, useEffect } from 'react';
import TodoList from "./TodoList";
import Footer from "./Footer";
import Header from "./Header";
import './App.css';

const { v4: uuidv4 } = require('uuid');
const LOCAL_STORAGE_KEY = 'todoApp.todos'


function App() {
    const [todos,setTodos] = useState([]); //,{id:2, name='testi2',complete=true}
    const todoNameRef = useRef()

    useEffect(() => {
        const storedTodos = JSON.parse(localStorage.getItem(LOCAL_STORAGE_KEY))
        if (storedTodos) setTodos(storedTodos)
    }, [])

    useEffect(() => {
        localStorage.setItem(LOCAL_STORAGE_KEY, JSON.stringify(todos))
    },[todos])
    /**
     * Enable checkbox for todo list
     * @param {todo} id 
     */
    function toggleTodo(id){
        const newTodos = [...todos]
        const todo = newTodos.find(todo => todo.id === id)
        todo.complete = !todo.complete
        setTodos(newTodos)
    }
    function handleAddTodo(e) {
        const name = todoNameRef.current.value;
        if (name === '') return
        setTodos(prevTodos => {
            return [...prevTodos, {id: uuidv4(), name: name, complete: false}]
        })
        todoNameRef.current.value = null;
    }
    /**
     * Delete's object from list based on id
     * @param {todo} id Todo object id
     */
    function deleteTodo(id){
        const newTodos = [...todos].filter(function(e) {
            return e.id !== id;
        });
        setTodos(newTodos);
    }

    

    return (
    <>
    <div style={{border : "1px solid white"}}>
        <Header/>
    </div>
    <div class="body" style={{border : "1px solid white"}}>
        <TodoList todos={todos} toggleTodo={toggleTodo} deleteTodo={deleteTodo}/>
        <input ref={todoNameRef} type="text"></input>
        <button class="lineitem" onClick={handleAddTodo}>Paina tästä</button>
        <div class="lineitem">{todos.filter(todo => !todo.complete).length} left to do.</div>
    </div>
    <div style={{border : "1px solid white"}}>
        <Footer/>
        <p>Here i'll explain something more</p>
    </div>
    </>
    );
}

export default App;